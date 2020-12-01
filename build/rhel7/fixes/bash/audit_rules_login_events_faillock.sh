# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'

fix_audit_watch_rule "auditctl" "/var/run/faillock" "wa" "logins"
fix_audit_watch_rule "augenrules" "/var/run/faillock" "wa" "logins"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi