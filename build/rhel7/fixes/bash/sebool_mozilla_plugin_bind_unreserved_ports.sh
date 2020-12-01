# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_mozilla_plugin_bind_unreserved_ports



setsebool -P mozilla_plugin_bind_unreserved_ports $var_mozilla_plugin_bind_unreserved_ports

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi