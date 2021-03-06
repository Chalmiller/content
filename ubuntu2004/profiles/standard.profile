documentation_complete: true

title: 'Standard System Security Profile for Ubuntu 2004'

description: |-
    This profile contains rules to ensure standard security baseline
    of a Ubuntu 2004 system. Regardless of your system's workload
    all of these checks should pass.

selections:
    - accounts_password_minlen_login_defs
    - kernel_module_cramfs_disabled
