# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_authlogin_nsswitch_use_ldap



setsebool -P authlogin_nsswitch_use_ldap $var_authlogin_nsswitch_use_ldap

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi