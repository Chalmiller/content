# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# CAUTION: This remediation script will remove setroubleshoot
#	   from the system, and may remove any packages
#	   that depend on setroubleshoot. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "setroubleshoot" ; then
    yum remove -y "setroubleshoot"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi