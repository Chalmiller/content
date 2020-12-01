# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_telepathy_tcp_connect_generic_network_ports



setsebool -P telepathy_tcp_connect_generic_network_ports $var_telepathy_tcp_connect_generic_network_ports

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi