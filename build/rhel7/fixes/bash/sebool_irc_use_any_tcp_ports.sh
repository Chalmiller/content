# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_irc_use_any_tcp_ports



setsebool -P irc_use_any_tcp_ports $var_irc_use_any_tcp_ports

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi