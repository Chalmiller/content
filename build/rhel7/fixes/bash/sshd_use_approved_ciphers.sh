# platform = multi_platform_wrlinux,Red Hat Enterprise Linux 7,Oracle Linux 7
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

populate sshd_approved_ciphers



replace_or_append '/etc/ssh/sshd_config' '^Ciphers' "$sshd_approved_ciphers" '@CCENUM@' '%s %s'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi