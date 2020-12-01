# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_dbadm_manage_user_files



setsebool -P dbadm_manage_user_files $var_dbadm_manage_user_files

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi