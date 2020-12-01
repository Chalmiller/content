# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = true
# disruption = medium
# strategy = disable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions
populate sysctl_net_ipv6_conf_default_accept_redirects_value



#
# Set runtime for net.ipv6.conf.default.accept_redirects
#
/sbin/sysctl -q -n -w net.ipv6.conf.default.accept_redirects="$sysctl_net_ipv6_conf_default_accept_redirects_value"

#
# If net.ipv6.conf.default.accept_redirects present in /etc/sysctl.conf, change value to appropriate value
#	else, add "net.ipv6.conf.default.accept_redirects = value" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv6.conf.default.accept_redirects' "$sysctl_net_ipv6_conf_default_accept_redirects_value" '@CCENUM@'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi