# platform = Red Hat Virtualization 4,multi_platform_rhel,multi_platform_wrlinux,multi_platform_ol
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions
populate var_auditd_space_left



grep -q "^space_left[[:space:]]*=.*$" /etc/audit/auditd.conf && \
  sed -i "s/^space_left[[:space:]]*=.*$/space_left = $var_auditd_space_left/g" /etc/audit/auditd.conf || \
  echo "space_left = $var_auditd_space_left" >> /etc/audit/auditd.conf

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi