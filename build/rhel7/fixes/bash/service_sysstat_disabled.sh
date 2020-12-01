# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle
# complexity = low
# reboot = false
# disruption = low
# strategy = disable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'sysstat.service'
"$SYSTEMCTL_EXEC" disable 'sysstat.service'
"$SYSTEMCTL_EXEC" mask 'sysstat.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^sysstat.socket'; then
    "$SYSTEMCTL_EXEC" stop 'sysstat.socket'
    "$SYSTEMCTL_EXEC" mask 'sysstat.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'sysstat.service' || true

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi