# platform = multi_platform_rhel,multi_platform_ol,multi_platform_fedora,multi_platform_rhv
# Remediation is applicable only in certain platforms
if rpm --quiet -q yum; then

. /usr/share/scap-security-guide/remediation_functions

replace_or_append "/etc/yum.conf" '^gpgcheck' '1' '@CCENUM@'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi