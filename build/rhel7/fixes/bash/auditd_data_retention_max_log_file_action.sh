# platform = Red Hat Virtualization 4,multi_platform_fedora,multi_platform_ol,multi_platform_rhel
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions
populate var_auditd_max_log_file_action



AUDITCONFIG=/etc/audit/auditd.conf

replace_or_append $AUDITCONFIG '^max_log_file_action' "$var_auditd_max_log_file_action" "@CCENUM@"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi