# platform = Red Hat Virtualization 4,multi_platform_fedora,multi_platform_ol,multi_platform_rhel,multi_platform_wrlinux
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions

populate rsyslog_remote_loghost_address



replace_or_append '/etc/rsyslog.conf' '^\*\.\*' "@@$rsyslog_remote_loghost_address" '@CCENUM@' '%s %s'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi