# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable

# CAUTION: This remediation script will remove openldap-clients
#	   from the system, and may remove any packages
#	   that depend on openldap-clients. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "openldap-clients" ; then
    yum remove -y "openldap-clients"
fi