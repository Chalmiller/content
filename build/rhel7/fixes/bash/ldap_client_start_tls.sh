# platform = Red Hat Virtualization 4,multi_platform_rhel
# Remediation is applicable only in certain platforms
if rpm --quiet -q nss-pam-ldapd; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# Use LDAP for authentication
replace_or_append '/etc/sysconfig/authconfig' '^USELDAPAUTH' 'yes' '@CCENUM@' '%s=%s'

# Configure client to use TLS for all authentications
replace_or_append '/etc/nslcd.conf' '^ssl' 'start_tls' '@CCENUM@' '%s %s'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi