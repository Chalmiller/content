# platform = multi_platform_all
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions
include_mount_options_functions

ensure_mount_option_for_vfstype "nfs[4]?" "nosuid" "" "nfs4"

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi