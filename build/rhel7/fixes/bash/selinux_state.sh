# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platorm_ol,multi_platform_rhv
# complexity = low
# reboot = true
# disruption = low
# strategy = restrict
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

populate var_selinux_state



if [ -e "/etc/selinux/config" ] ; then
    LC_ALL=C sed -i "/^SELINUX=/Id" "/etc/selinux/config"
else
    touch "/etc/selinux/config"
fi
cp "/etc/selinux/config" "/etc/selinux/config.bak"
# Insert at the end of the file
printf '%s\n' "SELINUX=$var_selinux_state" >> "/etc/selinux/config"
# Clean up after ourselves.
rm "/etc/selinux/config.bak"

fixfiles onboot
fixfiles -f relabel

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi