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

# Utility rule file for generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.

# Include the progress variables for this target.
include rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/progress.make

rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml: rhel7/xccdf-unlinked-ocilrefs.xml

rhel7/xccdf-unlinked-ocilrefs.xml: rhel7/xccdf-unlinked-resolved.xml
rhel7/xccdf-unlinked-ocilrefs.xml: rhel7/ocil-unlinked.xml
rhel7/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc --stringparam product rhel7 --output /home/ec2-user/content/build/rhel7/xccdf-unlinked-ocilrefs.xml /home/ec2-user/content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml

rhel7/xccdf-unlinked-resolved.xml: rhel7/shorthand.xml
rhel7/xccdf-unlinked-resolved.xml: ../rhel7/transforms/shorthand2xccdf.xslt
rhel7/xccdf-unlinked-resolved.xml: ../rhel7/transforms/constants.xslt
rhel7/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
rhel7/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-rhel7-v2r8-xccdf-manual.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating xccdf-unlinked-resolved.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc --stringparam ssg_version 0.1.54 --output /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml /home/ec2-user/content/rhel7/transforms/shorthand2xccdf.xslt /home/ec2-user/content/build/rhel7/shorthand.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/oscap xccdf resolve -o /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/add_stig_references.py --disa-stig /home/ec2-user/content/shared/references/disa-stig-rhel7-v2r8-xccdf-manual.xml --unlinked-xccdf /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml

rhel7/ocil-unlinked.xml: rhel7/xccdf-unlinked-resolved.xml
rhel7/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating ocil-unlinked.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xsltproc --stringparam ssg_version 0.1.54 --output /home/ec2-user/content/build/rhel7/ocil-unlinked.xml /home/ec2-user/content/shared/transforms/xccdf-create-ocil.xslt /home/ec2-user/content/build/rhel7/xccdf-unlinked-resolved.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xmllint --format --output /home/ec2-user/content/build/rhel7/ocil-unlinked.xml /home/ec2-user/content/build/rhel7/ocil-unlinked.xml

rhel7/shorthand.xml: bash-remediation-functions.xml
rhel7/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
rhel7/shorthand.xml: rhel7/profiles
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating shorthand.xml"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/cmake -E remove_directory /home/ec2-user/content/build/rhel7/rules
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/ec2-user/content/build/rhel7/rules --build-config-yaml /home/ec2-user/content/build/build_config.yml --product-yaml /home/ec2-user/content/rhel7/product.yml --bash-remediation-fns /home/ec2-user/content/build/bash-remediation-functions.xml --profiles-root /home/ec2-user/content/build/rhel7/profiles --output /home/ec2-user/content/build/rhel7/shorthand.xml
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/xmllint --format --output /home/ec2-user/content/build/rhel7/shorthand.xml /home/ec2-user/content/build/rhel7/shorthand.xml

rhel7/profiles: ../rhel7/profiles
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] compiling profiles"
	cd /home/ec2-user/content/build/rhel7 && /usr/bin/cmake -E make_directory /home/ec2-user/content/build/rhel7/profiles
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/compile_profiles.py --build-config-yaml /home/ec2-user/content/build/build_config.yml --product-yaml /home/ec2-user/content/rhel7/product.yml -o /home/ec2-user/content/build/rhel7/profiles/{name}.profile

generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml: rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml
generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml: rhel7/xccdf-unlinked-ocilrefs.xml
generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml: rhel7/xccdf-unlinked-resolved.xml
generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml: rhel7/ocil-unlinked.xml
generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml: rhel7/shorthand.xml
generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml: rhel7/profiles
generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml: rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/build.make
.PHONY : generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml

# Rule to build all files generated by this target.
rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/build: generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml
.PHONY : rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/build

rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/clean:
	cd /home/ec2-user/content/build/rhel7 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/cmake_clean.cmake
.PHONY : rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/clean

rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/depend:
	cd /home/ec2-user/content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ec2-user/content /home/ec2-user/content/rhel7 /home/ec2-user/content/build /home/ec2-user/content/build/rhel7 /home/ec2-user/content/build/rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhel7/CMakeFiles/generate-internal-rhel7-xccdf-unlinked-ocilrefs.xml.dir/depend

