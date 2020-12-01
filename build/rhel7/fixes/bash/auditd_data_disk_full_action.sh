# platform = Red Hat Virtualization 4,multi_platform_rhel
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

populate var_auditd_disk_full_action



replace_or_append /etc/audit/auditd.conf '^disk_full_action' "$var_auditd_disk_full_action" "@CCENUM@"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi