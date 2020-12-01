# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# CAUTION: This remediation script will remove openssh-server
#	   from the system, and may remove any packages
#	   that depend on openssh-server. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "openssh-server" ; then
    yum remove -y "openssh-server"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi