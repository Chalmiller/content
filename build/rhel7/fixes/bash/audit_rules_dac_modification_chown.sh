# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# First perform the remediation of the syscall rule
# Retrieve hardware architecture of the underlying system
[ "$(getconf LONG_BIT)" = "32" ] && RULE_ARCHS=("b32") || RULE_ARCHS=("b32" "b64")

for ARCH in "${RULE_ARCHS[@]}"
do
	PATTERN="-a always,exit -F arch=$ARCH -S chown.*"
	GROUP="perm_mod"
	FULL_RULE="-a always,exit -F arch=$ARCH -S chown -F auid>=1000 -F auid!=unset -F key=perm_mod"

	# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
	fix_audit_syscall_rule "augenrules" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
	fix_audit_syscall_rule "auditctl" "$PATTERN" "$GROUP" "$ARCH" "$FULL_RULE"
done

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi