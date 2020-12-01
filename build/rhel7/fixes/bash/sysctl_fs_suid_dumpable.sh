# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = true
# disruption = medium
# strategy = disable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for fs.suid_dumpable
#
/sbin/sysctl -q -n -w fs.suid_dumpable="0"

#
# If fs.suid_dumpable present in /etc/sysctl.conf, change value to "0"
#	else, add "fs.suid_dumpable = 0" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^fs.suid_dumpable' "0" '@CCENUM@'

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi