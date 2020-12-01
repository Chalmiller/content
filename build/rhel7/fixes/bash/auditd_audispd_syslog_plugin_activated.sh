# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions
var_syslog_active="yes"


AUDISP_SYSLOGCONFIG=/etc/audisp/plugins.d/syslog.conf


replace_or_append $AUDISP_SYSLOGCONFIG '^active' "$var_syslog_active" "@CCENUM@"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi