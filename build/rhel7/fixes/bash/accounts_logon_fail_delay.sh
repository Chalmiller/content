# platform = Red Hat Virtualization 4,multi_platform_rhel,multi_platform_wrlinux
# Remediation is applicable only in certain platforms
if rpm --quiet -q shadow-utils; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# Set variables
populate var_accounts_fail_delay



replace_or_append '/etc/login.defs' '^FAIL_DELAY' "$var_accounts_fail_delay" '@CCENUM@' '%s %s'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi