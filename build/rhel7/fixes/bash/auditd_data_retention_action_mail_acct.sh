# platform = Red Hat Virtualization 4,multi_platform_fedora,multi_platform_ol,multi_platform_rhel,multi_platform_wrlinux
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions
populate var_auditd_action_mail_acct



AUDITCONFIG=/etc/audit/auditd.conf

replace_or_append $AUDITCONFIG '^action_mail_acct' "$var_auditd_action_mail_acct" "@CCENUM@"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi