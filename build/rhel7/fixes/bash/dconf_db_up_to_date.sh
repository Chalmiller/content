# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ] && rpm --quiet -q gdm; then

dconf update

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi