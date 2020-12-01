# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = configure
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

chmod 0700 /etc/cron.hourly/

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi