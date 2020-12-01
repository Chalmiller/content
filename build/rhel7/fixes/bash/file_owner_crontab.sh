# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = configure
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

chown 0 /etc/crontab

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi