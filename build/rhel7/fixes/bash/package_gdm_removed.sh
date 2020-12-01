# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable
# Remediation is applicable only in certain platforms
if rpm --quiet -q gdm; then

# CAUTION: This remediation script will remove gdm
#	   from the system, and may remove any packages
#	   that depend on gdm. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "gdm" ; then
    yum remove -y "gdm"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi