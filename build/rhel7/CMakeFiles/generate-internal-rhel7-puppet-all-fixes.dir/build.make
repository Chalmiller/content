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

# Utility rule file for generate-internal-rhel7-puppet-all-fixes.

# Include the progress variables for this target.
include rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/progress.make

rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes: rhel7/fixes/puppet

rhel7/fixes/puppet: ../build-scripts/combine_remediations.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] collecting all puppet fixes"
	cd /home/ec2-user/content/build/rhel7 && env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/combine_remediations.py --resolved-rules-dir /home/ec2-user/content/build/rhel7/rules --build-config-yaml /home/ec2-user/content/build/build_config.yml --product-yaml /home/ec2-user/content/rhel7/product.yml --remediation-type puppet --output-dir /home/ec2-user/content/build/rhel7/fixes/puppet /home/ec2-user/content/build/rhel7/fixes_from_templates/shared/puppet /home/ec2-user/content/build/rhel7/fixes_from_templates/puppet

generate-internal-rhel7-puppet-all-fixes: rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes
generate-internal-rhel7-puppet-all-fixes: rhel7/fixes/puppet
generate-internal-rhel7-puppet-all-fixes: rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/build.make
.PHONY : generate-internal-rhel7-puppet-all-fixes

# Rule to build all files generated by this target.
rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/build: generate-internal-rhel7-puppet-all-fixes
.PHONY : rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/build

rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/clean:
	cd /home/ec2-user/content/build/rhel7 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/cmake_clean.cmake
.PHONY : rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/clean

rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/depend:
	cd /home/ec2-user/content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ec2-user/content /home/ec2-user/content/rhel7 /home/ec2-user/content/build /home/ec2-user/content/build/rhel7 /home/ec2-user/content/build/rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhel7/CMakeFiles/generate-internal-rhel7-puppet-all-fixes.dir/depend

