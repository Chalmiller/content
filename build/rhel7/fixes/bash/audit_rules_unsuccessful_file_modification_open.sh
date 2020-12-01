# platform = Red Hat Virtualization 4,multi_platform_ol,multi_platform_rhel,multi_platform_wrlinux
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

#
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

create_audit_remediation_unsuccessful_file_modification_detailed /etc/audit/rules.d/30-ospp-v42-remediation.rules

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi