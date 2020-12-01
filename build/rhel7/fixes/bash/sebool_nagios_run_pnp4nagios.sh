# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_nagios_run_pnp4nagios



setsebool -P nagios_run_pnp4nagios $var_nagios_run_pnp4nagios

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi