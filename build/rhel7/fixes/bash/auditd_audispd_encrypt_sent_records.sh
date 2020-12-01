# platform = multi_platform_wrlinux,multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions


AUDISP_REMOTE_CONFIG="/etc/audisp/audisp-remote.conf"
option="^enable_krb5"
value="yes"


replace_or_append $AUDISP_REMOTE_CONFIG "$option" "$value" "@CCENUM@"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi