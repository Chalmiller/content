# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! rpm -q --quiet "rsyslog" ; then
    yum install -y "rsyslog"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi