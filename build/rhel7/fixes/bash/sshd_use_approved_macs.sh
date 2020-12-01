# platform = multi_platform_wrlinux,Red Hat Enterprise Linux 7,Oracle Linux 7,multi_platform_sle
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

populate sshd_approved_macs



replace_or_append '/etc/ssh/sshd_config' '^MACs' "$sshd_approved_macs" '@CCENUM@' '%s %s'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi