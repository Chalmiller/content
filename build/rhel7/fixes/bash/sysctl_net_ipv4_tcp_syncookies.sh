# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = true
# disruption = medium
# strategy = disable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions
populate sysctl_net_ipv4_tcp_syncookies_value



#
# Set runtime for net.ipv4.tcp_syncookies
#
/sbin/sysctl -q -n -w net.ipv4.tcp_syncookies="$sysctl_net_ipv4_tcp_syncookies_value"

#
# If net.ipv4.tcp_syncookies present in /etc/sysctl.conf, change value to appropriate value
#	else, add "net.ipv4.tcp_syncookies = value" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv4.tcp_syncookies' "$sysctl_net_ipv4_tcp_syncookies_value" '@CCENUM@'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi