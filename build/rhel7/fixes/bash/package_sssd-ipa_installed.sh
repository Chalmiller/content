# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Remediation is applicable only in certain platforms
if rpm --quiet -q sssd-common; then

if ! rpm -q --quiet "sssd-ipa" ; then
    yum install -y "sssd-ipa"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi