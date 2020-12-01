description: 'This profile contains configuration checks that align to the

    DISA STIG for Red Hat Enterprise Linux V2R8.


    In addition to being applicable to Red Hat Enterprise Linux 7, DISA recognizes
    this

    configuration baseline as applicable to the operating system tier of

    Red Hat technologies that are based on Red Hat Enterprise Linux 7, such as:


    - Red Hat Enterprise Linux Server

    - Red Hat Enterprise Linux Workstation and Desktop

    - Red Hat Enterprise Linux for HPC

    - Red Hat Storage

    - Red Hat Containers with a Red Hat Enterprise Linux 7 image'
documentation_complete: true
reference: https://public.cyber.mil/stigs/downloads/?_dl_facet_stigs=operating-systems%2Cunix-linux
selections: [account_disable_post_pw_expiration, accounts_have_homedir_login_defs,
    accounts_logon_fail_delay, accounts_max_concurrent_login_sessions, accounts_maximum_age_login_defs,
    accounts_minimum_age_login_defs, accounts_no_uid_except_zero, accounts_password_pam_dcredit,
    accounts_password_pam_difok, accounts_password_pam_lcredit, accounts_password_pam_maxclassrepeat,
    accounts_password_pam_maxrepeat, accounts_password_pam_minclass, accounts_password_pam_minlen,
    accounts_password_pam_ocredit, accounts_password_pam_retry, accounts_password_pam_ucredit,
    accounts_password_pam_unix_remember, accounts_password_set_max_life_existing,
    accounts_password_set_min_life_existing, accounts_passwords_pam_faillock_deny,
    accounts_passwords_pam_faillock_deny_root, accounts_passwords_pam_faillock_interval,
    accounts_passwords_pam_faillock_unlock_time, accounts_tmout, accounts_umask_etc_login_defs,
    accounts_umask_interactive_users, accounts_user_dot_group_ownership, accounts_user_dot_no_world_writable_programs,
    accounts_user_dot_user_ownership, accounts_user_home_paths_only, accounts_user_interactive_home_directory_exists,
    accounts_users_home_files_groupownership, accounts_users_home_files_ownership,
    accounts_users_home_files_permissions, aide_periodic_cron_checking, aide_scan_notification,
    aide_use_fips_hashes, aide_verify_acls, aide_verify_ext_attributes, audit_rules_dac_modification_chmod,
    audit_rules_dac_modification_chown, audit_rules_dac_modification_fchmod, audit_rules_dac_modification_fchmodat,
    audit_rules_dac_modification_fchown, audit_rules_dac_modification_fchownat, audit_rules_dac_modification_fremovexattr,
    audit_rules_dac_modification_fsetxattr, audit_rules_dac_modification_lchown, audit_rules_dac_modification_lremovexattr,
    audit_rules_dac_modification_lsetxattr, audit_rules_dac_modification_removexattr,
    audit_rules_dac_modification_setxattr, audit_rules_execution_chcon, audit_rules_execution_semanage,
    audit_rules_execution_setfiles, audit_rules_execution_setsebool, audit_rules_file_deletion_events_rename,
    audit_rules_file_deletion_events_renameat, audit_rules_file_deletion_events_rmdir,
    audit_rules_file_deletion_events_unlink, audit_rules_file_deletion_events_unlinkat,
    audit_rules_kernel_module_loading_delete, audit_rules_kernel_module_loading_finit,
    audit_rules_kernel_module_loading_init, audit_rules_login_events_faillock, audit_rules_login_events_lastlog,
    audit_rules_login_events_tallylog, audit_rules_media_export, audit_rules_privileged_commands,
    audit_rules_privileged_commands_chage, audit_rules_privileged_commands_chsh, audit_rules_privileged_commands_crontab,
    audit_rules_privileged_commands_gpasswd, audit_rules_privileged_commands_mount,
    audit_rules_privileged_commands_newgrp, audit_rules_privileged_commands_pam_timestamp_check,
    audit_rules_privileged_commands_passwd, audit_rules_privileged_commands_postdrop,
    audit_rules_privileged_commands_postqueue, audit_rules_privileged_commands_ssh_keysign,
    audit_rules_privileged_commands_su, audit_rules_privileged_commands_sudo, audit_rules_privileged_commands_sudoedit,
    audit_rules_privileged_commands_umount, audit_rules_privileged_commands_unix_chkpwd,
    audit_rules_privileged_commands_userhelper, audit_rules_sysadmin_actions, audit_rules_system_shutdown,
    audit_rules_unsuccessful_file_modification_creat, audit_rules_unsuccessful_file_modification_ftruncate,
    audit_rules_unsuccessful_file_modification_open, audit_rules_unsuccessful_file_modification_open_by_handle_at,
    audit_rules_unsuccessful_file_modification_openat, audit_rules_unsuccessful_file_modification_truncate,
    audit_rules_usergroup_modification_group, audit_rules_usergroup_modification_gshadow,
    audit_rules_usergroup_modification_opasswd, audit_rules_usergroup_modification_passwd,
    audit_rules_usergroup_modification_shadow, auditd_audispd_configure_remote_server,
    auditd_audispd_disk_full_action, auditd_audispd_encrypt_sent_records, auditd_audispd_network_failure_action,
    auditd_data_retention_action_mail_acct, auditd_data_retention_space_left, auditd_data_retention_space_left_action,
    banner_etc_issue, chronyd_or_ntpd_set_maxpoll, clean_components_post_updating,
    configure_firewalld_ports, configure_firewalld_rate_limiting, dconf_db_up_to_date,
    dconf_gnome_banner_enabled, dconf_gnome_disable_automount, dconf_gnome_disable_automount_open,
    dconf_gnome_disable_autorun, dconf_gnome_disable_ctrlaltdel_reboot, dconf_gnome_enable_smartcard_auth,
    dconf_gnome_login_banner_text, dconf_gnome_screensaver_idle_activation_enabled,
    dconf_gnome_screensaver_idle_activation_locked, dconf_gnome_screensaver_idle_delay,
    dconf_gnome_screensaver_lock_delay, dconf_gnome_screensaver_lock_enabled, dconf_gnome_screensaver_lock_locked,
    dconf_gnome_screensaver_user_locks, dconf_gnome_session_idle_user_locks, dir_perms_world_writable_system_owned,
    disable_ctrlaltdel_reboot, disable_host_auth, display_login_attempts, ensure_gpgcheck_globally_activated,
    ensure_gpgcheck_local_packages, file_groupowner_cron_allow, file_groupownership_home_directories,
    file_owner_cron_allow, file_ownership_home_directories, file_permission_user_init_files,
    file_permissions_home_directories, file_permissions_sshd_private_key, file_permissions_sshd_pub_key,
    file_permissions_ungroupowned, gid_passwd_group_same, gnome_gdm_disable_automatic_login,
    gnome_gdm_disable_guest_login, grub2_enable_fips_mode, grub2_no_removeable_media,
    grub2_password, grub2_uefi_password, install_antivirus, install_smartcard_packages,
    installed_OS_is_vendor_supported, kernel_module_dccp_disabled, kernel_module_usb-storage_disabled,
    libreswan_approved_tunnels, mount_option_dev_shm_nodev, mount_option_dev_shm_noexec,
    mount_option_dev_shm_nosuid, mount_option_home_nosuid, mount_option_krb_sec_remote_filesystems,
    mount_option_noexec_remote_filesystems, mount_option_nosuid_remote_filesystems,
    mount_option_nosuid_removable_partitions, network_configure_name_resolution, network_sniffer_disabled,
    no_empty_passwords, no_files_unowned_by_user, no_host_based_files, no_user_host_based_files,
    package_MFEhiplsm_installed, package_aide_installed, package_openssh-server_installed,
    package_rsh-server_removed, package_telnet-server_removed, package_tftp-server_removed,
    package_vsftpd_removed, package_xorg-x11-server-common_removed, package_ypserv_removed,
    partition_for_home, partition_for_tmp, partition_for_var, partition_for_var_log_audit,
    postfix_prevent_unrestricted_relay, require_singleuser_auth, rpm_verify_hashes,
    rpm_verify_ownership, rpm_verify_permissions, rsyslog_cron_logging, rsyslog_nolisten,
    rsyslog_remote_loghost, security_patches_up_to_date, selinux_all_devicefiles_labeled,
    selinux_policytype, selinux_state, selinux_user_login_roles, service_auditd_enabled,
    service_autofs_disabled, service_firewalld_enabled, service_kdump_disabled, service_sshd_enabled,
    set_firewalld_default_zone, set_password_hashing_algorithm_libuserconf, set_password_hashing_algorithm_logindefs,
    set_password_hashing_algorithm_systemauth, smartcard_auth, smartcard_configure_cert_checking,
    snmpd_not_default_password, sshd_allow_only_protocol2, sshd_disable_compression,
    sshd_disable_empty_passwords, sshd_disable_gssapi_auth, sshd_disable_kerb_auth,
    sshd_disable_rhosts, sshd_disable_rhosts_rsa, sshd_disable_root_login, sshd_disable_user_known_hosts,
    sshd_do_not_permit_user_env, sshd_enable_strictmodes, sshd_enable_warning_banner,
    sshd_enable_x11_forwarding, sshd_print_last_log, sshd_set_idle_timeout, sshd_set_keepalive,
    sshd_use_approved_ciphers, sshd_use_approved_macs, sshd_use_priv_separation, sssd_enable_pam_services,
    sssd_ldap_configure_tls_ca, sssd_ldap_configure_tls_ca_dir, sssd_ldap_configure_tls_reqcert,
    sssd_ldap_start_tls, sudo_remove_no_authenticate, sudo_remove_nopasswd, sysctl_kernel_randomize_va_space,
    sysctl_net_ipv4_conf_all_accept_redirects, sysctl_net_ipv4_conf_all_accept_source_route,
    sysctl_net_ipv4_conf_all_send_redirects, sysctl_net_ipv4_conf_default_accept_redirects,
    sysctl_net_ipv4_conf_default_accept_source_route, sysctl_net_ipv4_conf_default_send_redirects,
    sysctl_net_ipv4_icmp_echo_ignore_broadcasts, sysctl_net_ipv4_ip_forward, sysctl_net_ipv6_conf_all_accept_source_route,
    tftpd_uses_secure_mode, uefi_no_removeable_media, wireless_disable_interfaces,
    var_password_pam_minclass=4, var_password_pam_maxrepeat=3, var_accounts_user_umask=077,
    sysctl_net_ipv6_conf_all_accept_source_route_value=disabled, sshd_approved_macs=stig,
    var_selinux_policy_name=targeted, var_password_pam_ocredit=1, var_password_pam_dcredit=1,
    var_selinux_state=enforcing, var_password_pam_minlen=15, sshd_required=yes, var_accounts_passwords_pam_faillock_fail_interval=900,
    var_accounts_fail_delay=4, var_password_pam_difok=8, var_accounts_minimum_age_login_defs=1,
    sshd_approved_ciphers=stig, sysctl_net_ipv4_conf_default_accept_redirects_value=disabled,
    var_accounts_passwords_pam_faillock_unlock_time=never, var_screensaver_lock_delay=5_seconds,
    var_password_pam_maxclassrepeat=4, sysctl_net_ipv4_icmp_echo_ignore_broadcasts_value=enabled,
    var_time_service_set_maxpoll=system_default, sysctl_net_ipv4_conf_all_accept_redirects_value=disabled,
    var_password_pam_lcredit=1, var_auditd_action_mail_acct=root, sysctl_net_ipv4_conf_all_accept_source_route_value=disabled,
    var_accounts_maximum_age_login_defs=60, var_accounts_passwords_pam_faillock_deny=3,
    sshd_idle_timeout_value=10_minutes, inactivity_timeout_value=15_minutes, var_account_disable_post_pw_expiration=0,
    var_password_pam_retry=3, var_password_pam_ucredit=1, var_accounts_tmout=15_min,
    var_accounts_max_concurrent_login_sessions=10, login_banner_text=dod_banners,
    var_removable_partition=dev_cdrom, var_auditd_space_left_action=email, sysctl_net_ipv4_conf_default_accept_source_route_value=disabled,
    var_password_pam_unix_remember=5, sssd_ldap_start_tls.severity=medium]
title: DISA STIG for Red Hat Enterprise Linux 7
