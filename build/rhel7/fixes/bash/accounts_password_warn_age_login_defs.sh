# platform = Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8,Red Hat Virtualization 4
# Remediation is applicable only in certain platforms
if rpm --quiet -q shadow-utils; then

. /usr/share/scap-security-guide/remediation_functions
populate var_accounts_password_warn_age_login_defs



grep -q ^PASS_WARN_AGE /etc/login.defs && \
  sed -i "s/PASS_WARN_AGE.*/PASS_WARN_AGE     $var_accounts_password_warn_age_login_defs/g" /etc/login.defs
if ! [ $? -eq 0 ]; then
    echo "PASS_WARN_AGE      $var_accounts_password_warn_age_login_defs" >> /etc/login.defs
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi