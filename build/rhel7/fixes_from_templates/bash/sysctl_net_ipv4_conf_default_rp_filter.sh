# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions
populate sysctl_net_ipv4_conf_default_rp_filter_value



#
# Set runtime for net.ipv4.conf.default.rp_filter
#
/sbin/sysctl -q -n -w net.ipv4.conf.default.rp_filter="$sysctl_net_ipv4_conf_default_rp_filter_value"

#
# If net.ipv4.conf.default.rp_filter present in /etc/sysctl.conf, change value to appropriate value
#	else, add "net.ipv4.conf.default.rp_filter = value" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv4.conf.default.rp_filter' "$sysctl_net_ipv4_conf_default_rp_filter_value" '@CCENUM@'