# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ec2-user/content

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ec2-user/content/build

# Utility rule file for generate-rhel7-table-anssirefs-nt28_intermediary.

# Include the progress variables for this target.
include rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/progress.make

rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary: tables/table-rhel7-anssirefs-nt28_intermediary.html

tables/table-rhel7-anssirefs-nt28_intermediary.html: ssg-rhel7-xccdf.xml
tables/table-rhel7-anssirefs-nt28_intermediary.html: ../rhel7/transforms/xccdf2table-profileanssirefs.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-tables] generating HTML ANSSI refs table for anssi_nt28_intermediary profile"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/cmake -E make_directory /home/ec2-user/content/build/tables
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc -stringparam profile anssi_nt28_intermediary --output /home/ec2-user/content/build/tables/table-rhel7-anssirefs-nt28_intermediary.html /home/ec2-user/content/rhel7/transforms/xccdf2table-profileanssirefs.xslt /home/ec2-user/content/build/ssg-rhel7-xccdf.xml

ssg-rhel7-xccdf.xml: rhel7/xccdf-linked.xml
ssg-rhel7-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-rhel7-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating ssg-rhel7-xccdf.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc --output /home/ec2-user/content/build/ssg-rhel7-xccdf.xml /home/ec2-user/content/shared/transforms/shared_xccdf-removeaux.xslt /home/ec2-user/content/build/rhel7/xccdf-linked.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/sed -i s/oval-linked.xml/ssg-rhel7-oval.xml/g /home/ec2-user/content/build/ssg-rhel7-xccdf.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/sed -i s/ocil-linked.xml/ssg-rhel7-ocil.xml/g /home/ec2-user/content/build/ssg-rhel7-xccdf.xml
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/unselect_empty_xccdf_groups.py --input /home/ec2-user/content/build/ssg-rhel7-xccdf.xml --output /home/ec2-user/content/build/ssg-rhel7-xccdf.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/oscap xccdf resolve -o /home/ec2-user/content/build/ssg-rhel7-xccdf.xml /home/ec2-user/content/build/ssg-rhel7-xccdf.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xmllint --nsclean --format --output /home/ec2-user/content/build/ssg-rhel7-xccdf.xml /home/ec2-user/content/build/ssg-rhel7-xccdf.xml

rhel7/xccdf-linked.xml: rhel7/xccdf-unlinked.xml
rhel7/xccdf-linked.xml: rhel7/oval-unlinked.xml
rhel7/xccdf-linked.xml: rhel7/ocil-unlinked.xml
rhel7/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/relabel_ids.py /home/ec2-user/content/build/rhel7/xccdf-unlinked.xml ssg

rhel7/oval-linked.xml: rhel7/xccdf-linked.xml

rhel7/ocil-linked.xml: rhel7/xccdf-linked.xml

rhel7/xccdf-unlinked.xml: rhel7/xccdf-unlinked-ocilrefs.xml
rhel7/xccdf-unlinked.xml: rhel7/bash-fixes.xml
rhel7/xccdf-unlinked.xml: rhel7/ansible-fixes.xml
rhel7/xccdf-unlinked.xml: rhel7/puppet-fixes.xml
rhel7/xccdf-unlinked.xml: rhel7/anaconda-fixes.xml
rhel7/xccdf-unlinked.xml: rhel7/ignition-fixes.xml
rhel7/xccdf-unlinked.xml: rhel7/kubernetes-fixes.xml
rhel7/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating xccdf-unlinked.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc --stringparam bash_remediations /home/ec2-user/content/build/rhel7/bash-fixes.xml --stringparam ansible_remediations /home/ec2-user/content/build/rhel7/ansible-fixes.xml --stringparam puppet_remediations /home/ec2-user/content/build/rhel7/puppet-fixes.xml --stringparam anaconda_remediations /home/ec2-user/content/build/rhel7/anaconda-fixes.xml --stringparam ignition_remediations /home/ec2-user/content/build/rhel7/ignition-fixes.xml --stringparam kubernetes_remediations /home/ec2-user/content/build/rhel7/kubernetes-fixes.xml --output /home/ec2-user/content/build/rhel7/xccdf-unlinked.xml /home/ec2-user/content/shared/transforms/xccdf-addremediations.xslt /home/ec2-user/content/build/rhel7/xccdf-unlinked-ocilrefs.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xmllint --format --output /home/ec2-user/content/build/rhel7/xccdf-unlinked.xml /home/ec2-user/content/build/rhel7/xccdf-unlinked.xml

rhel7/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating oval-unlinked.xml"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/combine_ovals.py --build-config-yaml /home/ec2-user/content/build/build_config.yml --product-yaml /home/ec2-user/content/rhel7/product.yml --output /home/ec2-user/content/build/rhel7/oval-unlinked.xml /home/ec2-user/content/build/rhel7/checks/shared/oval /home/ec2-user/content/shared/checks/oval /home/ec2-user/content/build/rhel7/checks/oval /home/ec2-user/content/rhel7/checks/oval
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xmllint --format --output /home/ec2-user/content/build/rhel7/oval-unlinked.xml /home/ec2-user/content/build/rhel7/oval-unlinked.xml

rhel7/ocil-unlinked.xml: rhel7/xccdf-unlinked-resolved.xml
rhel7/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating ocil-unlinked.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc --stringparam ssg_version 0.1.54 --output /home/ec2-user/content/build/rhel7/ocil-unlinked.xml /home/ec2-user/content/shared/transforms/xccdf-create-ocil.xslt /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xmllint --format --output /home/ec2-user/content/build/rhel7/ocil-unlinked.xml /home/ec2-user/content/build/rhel7/ocil-unlinked.xml

rhel7/xccdf-unlinked-ocilrefs.xml: rhel7/xccdf-unlinked-resolved.xml
rhel7/xccdf-unlinked-ocilrefs.xml: rhel7/ocil-unlinked.xml
rhel7/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc --stringparam product rhel7 --output /home/ec2-user/content/build/rhel7/xccdf-unlinked-ocilrefs.xml /home/ec2-user/content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml

rhel7/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating bash-fixes.xml"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/ec2-user/content/build --output /home/ec2-user/content/build/rhel7/bash-fixes.xml /home/ec2-user/content/build/rhel7/fixes/bash

rhel7/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating ansible-fixes.xml"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/ec2-user/content/build --output /home/ec2-user/content/build/rhel7/ansible-fixes.xml /home/ec2-user/content/build/rhel7/fixes/ansible

rhel7/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating puppet-fixes.xml"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/ec2-user/content/build --output /home/ec2-user/content/build/rhel7/puppet-fixes.xml /home/ec2-user/content/build/rhel7/fixes/puppet

rhel7/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating anaconda-fixes.xml"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/ec2-user/content/build --output /home/ec2-user/content/build/rhel7/anaconda-fixes.xml /home/ec2-user/content/build/rhel7/fixes/anaconda

rhel7/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating ignition-fixes.xml"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/ec2-user/content/build --output /home/ec2-user/content/build/rhel7/ignition-fixes.xml /home/ec2-user/content/build/rhel7/fixes/ignition

rhel7/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating kubernetes-fixes.xml"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/ec2-user/content/build --output /home/ec2-user/content/build/rhel7/kubernetes-fixes.xml /home/ec2-user/content/build/rhel7/fixes/kubernetes

rhel7/xccdf-unlinked-resolved.xml: rhel7/shorthand.xml
rhel7/xccdf-unlinked-resolved.xml: ../rhel7/transforms/shorthand2xccdf.xslt
rhel7/xccdf-unlinked-resolved.xml: ../rhel7/transforms/constants.xslt
rhel7/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
rhel7/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-rhel7-v2r8-xccdf-manual.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating xccdf-unlinked-resolved.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc --stringparam ssg_version 0.1.54 --output /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml /home/ec2-user/content/rhel7/transforms/shorthand2xccdf.xslt /home/ec2-user/content/build/rhel7/shorthand.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/oscap xccdf resolve -o /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/add_stig_references.py --disa-stig /home/ec2-user/content/shared/references/disa-stig-rhel7-v2r8-xccdf-manual.xml --unlinked-xccdf /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml

rhel7/shorthand.xml: bash-remediation-functions.xml
rhel7/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
rhel7/shorthand.xml: rhel7/profiles
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_15)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating shorthand.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/cmake -E remove_directory /home/ec2-user/content/build/rhel7/rules
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/ec2-user/content/build/rhel7/rules --build-config-yaml /home/ec2-user/content/build/build_config.yml --product-yaml /home/ec2-user/content/rhel7/product.yml --bash-remediation-fns /home/ec2-user/content/build/bash-remediation-functions.xml --profiles-root /home/ec2-user/content/build/rhel7/profiles --output /home/ec2-user/content/build/rhel7/shorthand.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xmllint --format --output /home/ec2-user/content/build/rhel7/shorthand.xml /home/ec2-user/content/build/rhel7/shorthand.xml

rhel7/profiles: ../rhel7/profiles
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_16)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] compiling profiles"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/cmake -E make_directory /home/ec2-user/content/build/rhel7/profiles
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/compile_profiles.py --build-config-yaml /home/ec2-user/content/build/build_config.yml --product-yaml /home/ec2-user/content/rhel7/product.yml -o /home/ec2-user/content/build/rhel7/profiles/{name}.profile

generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary
generate-rhel7-table-anssirefs-nt28_intermediary: tables/table-rhel7-anssirefs-nt28_intermediary.html
generate-rhel7-table-anssirefs-nt28_intermediary: ssg-rhel7-xccdf.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/xccdf-linked.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/oval-linked.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/ocil-linked.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/xccdf-unlinked.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/oval-unlinked.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/ocil-unlinked.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/xccdf-unlinked-ocilrefs.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/bash-fixes.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/ansible-fixes.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/puppet-fixes.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/anaconda-fixes.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/ignition-fixes.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/kubernetes-fixes.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/xccdf-unlinked-resolved.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/shorthand.xml
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/profiles
generate-rhel7-table-anssirefs-nt28_intermediary: rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/build.make
.PHONY : generate-rhel7-table-anssirefs-nt28_intermediary

# Rule to build all files generated by this target.
rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/build: generate-rhel7-table-anssirefs-nt28_intermediary
.PHONY : rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/build

rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/clean:
	cd /home/ec2-user/content/build/rhel7 && $(CMAKE_COMMAND) -P CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/cmake_clean.cmake
.PHONY : rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/clean

rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/depend:
	cd /home/ec2-user/content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ec2-user/content /home/ec2-user/content/rhel7 /home/ec2-user/content/build /home/ec2-user/content/build/rhel7 /home/ec2-user/content/build/rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhel7/CMakeFiles/generate-rhel7-table-anssirefs-nt28_intermediary.dir/depend

