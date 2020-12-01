# platform = Red Hat Enterprise Linux 7,multi_platform_fedora,Oracle Linux 7
# complexity = low
# reboot = false
# disruption = low
# strategy = configure
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

PKCSSW=$(/usr/bin/pkcs11-switch)

if [ ${PKCSSW} != "opensc" ] ; then
    ${PKCSSW} opensc
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi