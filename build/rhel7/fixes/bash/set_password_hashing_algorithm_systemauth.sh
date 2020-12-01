# platform = multi_platform_wrlinux,multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# Remediation is applicable only in certain platforms
if rpm --quiet -q pam; then

AUTH_FILES[0]="/etc/pam.d/system-auth"
AUTH_FILES[1]="/etc/pam.d/password-auth"

for pamFile in "${AUTH_FILES[@]}"
do
	if ! grep -q "^password.*sufficient.*pam_unix.so.*sha512" $pamFile; then
		sed -i --follow-symlinks "/^password.*sufficient.*pam_unix.so/ s/$/ sha512/" $pamFile
	fi
done

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi