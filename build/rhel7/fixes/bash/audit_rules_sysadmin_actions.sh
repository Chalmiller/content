# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
fix_audit_watch_rule "auditctl" "/etc/sudoers" "wa" "actions"
fix_audit_watch_rule "augenrules" "/etc/sudoers" "wa" "actions"

fix_audit_watch_rule "auditctl" "/etc/sudoers.d/" "wa" "actions"
fix_audit_watch_rule "augenrules" "/etc/sudoers.d/" "wa" "actions"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi