# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = restrict
# Remediation is applicable only in certain platforms
if rpm --quiet -q pam; then

. /usr/share/scap-security-guide/remediation_functions
populate var_password_pam_maxclassrepeat



replace_or_append '/etc/security/pwquality.conf' '^maxclassrepeat' $var_password_pam_maxclassrepeat '@CCENUM@' '%s = %s'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi