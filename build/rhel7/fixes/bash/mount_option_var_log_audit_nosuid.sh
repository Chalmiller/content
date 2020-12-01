# platform = multi_platform_all
# reboot = false
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

. /usr/share/scap-security-guide/remediation_functions

include_mount_options_functions

function perform_remediation {
	# test "$mount_has_to_exist" = 'yes'
	if test "yes" = 'yes'; then
		assert_mount_point_in_fstab /var/log/audit || { echo "Not remediating, because there is no record of /var/log/audit in /etc/fstab" >&2; return 1; }
	fi

	ensure_mount_option_in_fstab "/var/log/audit" "nosuid" "" ""

	ensure_partition_is_mounted "/var/log/audit"
}

perform_remediation

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi