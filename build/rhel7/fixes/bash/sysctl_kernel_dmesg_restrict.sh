# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = true
# disruption = medium
# strategy = disable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for kernel.dmesg_restrict
#
/sbin/sysctl -q -n -w kernel.dmesg_restrict="1"

#
# If kernel.dmesg_restrict present in /etc/sysctl.conf, change value to "1"
#	else, add "kernel.dmesg_restrict = 1" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^kernel.dmesg_restrict' "1" '@CCENUM@'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi