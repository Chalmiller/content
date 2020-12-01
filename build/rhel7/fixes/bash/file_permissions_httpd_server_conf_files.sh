# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = configure


readarray -t files < <(find /etc/httpd/conf/)
for file in "${files[@]}"; do
    if basename $file | grep -q '^.*$'; then
        chmod 0640 $file
    fi    
done