# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions
populate var_auditd_num_logs



AUDITCONFIG=/etc/audit/auditd.conf

replace_or_append $AUDITCONFIG '^num_logs' "$var_auditd_num_logs" "@CCENUM@"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi