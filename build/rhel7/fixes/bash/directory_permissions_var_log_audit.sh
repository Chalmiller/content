# platform = Red Hat Virtualization 4,multi_platform_rhel
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if LC_ALL=C grep -m 1 -q ^log_group /etc/audit/auditd.conf; then
  GROUP=$(awk -F "=" '/log_group/ {print $2}' /etc/audit/auditd.conf | tr -d ' ')
  if ! [ "${GROUP}" == 'root' ] ; then
    chmod 0750 /var/log/audit
  else
    chmod 0700 /var/log/audit
  fi
else
  chmod 0700 /var/log/audit
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi