# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions
populate sysctl_net_ipv4_tcp_invalid_ratelimit_value



#
# Set runtime for net.ipv4.tcp_invalid_ratelimit
#
/sbin/sysctl -q -n -w net.ipv4.tcp_invalid_ratelimit="$sysctl_net_ipv4_tcp_invalid_ratelimit_value"

#
# If net.ipv4.tcp_invalid_ratelimit present in /etc/sysctl.conf, change value to appropriate value
#	else, add "net.ipv4.tcp_invalid_ratelimit = value" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv4.tcp_invalid_ratelimit' "$sysctl_net_ipv4_tcp_invalid_ratelimit_value" '@CCENUM@'