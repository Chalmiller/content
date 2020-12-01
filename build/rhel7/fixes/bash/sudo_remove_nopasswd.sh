# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = restrict

for f in $( ls /etc/sudoers /etc/sudoers.d/* 2> /dev/null ) ; do
  matching_list=$(grep -P '^(?!#).*[\s]+NOPASSWD[\s]*\:.*$' $f | uniq )
  if ! test -z "$matching_list"; then
    while IFS= read -r entry; do
      # comment out "NOPASSWD" matches to preserve user data
      sed -i "s/^${entry}$/# &/g" $f
    done <<< "$matching_list"

    /usr/sbin/visudo -cf $f &> /dev/null || echo "Fail to validate $f with visudo"
  fi
done