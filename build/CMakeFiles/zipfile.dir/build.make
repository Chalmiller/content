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

# Utility rule file for zipfile.

# Include the progress variables for this target.
include CMakeFiles/zipfile.dir/progress.make

CMakeFiles/zipfile: zipfile/scap-security-guide-0.1.54.zip

zipfile/scap-security-guide-0.1.54.zip:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building zipfile at /home/ec2-user/content/build/zipfile/scap-security-guide-0.1.54.zip"
	/usr/bin/cmake -E remove_directory zipfile/
	/usr/bin/cmake -E make_directory zipfile/scap-security-guide-0.1.54
	/usr/bin/cmake -E copy /home/ec2-user/content/README.md zipfile/scap-security-guide-0.1.54
	/usr/bin/cmake -E copy /home/ec2-user/content/Contributors.md zipfile/scap-security-guide-0.1.54
	/usr/bin/cmake -E copy /home/ec2-user/content/LICENSE zipfile/scap-security-guide-0.1.54
	/usr/bin/cmake -E make_directory zipfile/scap-security-guide-0.1.54/kickstart
	/usr/bin/cmake -DSOURCE="/home/ec2-user/content/rhel*/kickstart/*-ks.cfg" -DDEST="zipfile/scap-security-guide-0.1.54/kickstart" -P /home/ec2-user/content/cmake/CopyFiles.cmake
	/usr/bin/cmake -DSOURCE="/home/ec2-user/content/build/ssg-*-ds.xml" -DDEST="zipfile/scap-security-guide-0.1.54" -P /home/ec2-user/content/cmake/CopyFiles.cmake
	/usr/bin/cmake -DSOURCE="/home/ec2-user/content/build/ssg-*-ds-1.2.xml" -DDEST="zipfile/scap-security-guide-0.1.54" -P /home/ec2-user/content/cmake/CopyFiles.cmake
	/usr/bin/cmake -E make_directory zipfile/scap-security-guide-0.1.54/bash
	/usr/bin/cmake -DSOURCE="/home/ec2-user/content/build/bash/*.sh" -DDEST="zipfile/scap-security-guide-0.1.54/bash" -P /home/ec2-user/content/cmake/CopyFiles.cmake
	/usr/bin/cmake -E make_directory zipfile/scap-security-guide-0.1.54/ansible
	/usr/bin/cmake -DSOURCE="/home/ec2-user/content/build/ansible/*.yml" -DDEST="zipfile/scap-security-guide-0.1.54/ansible" -P /home/ec2-user/content/cmake/CopyFiles.cmake
	/usr/bin/cmake -E make_directory zipfile/scap-security-guide-0.1.54/guides
	/usr/bin/cmake -DSOURCE="/home/ec2-user/content/build/guides/*" -DDEST="zipfile/scap-security-guide-0.1.54/guides" -P /home/ec2-user/content/cmake/CopyFiles.cmake
	/usr/bin/cmake -E make_directory zipfile/scap-security-guide-0.1.54/tables
	/usr/bin/cmake -DSOURCE="/home/ec2-user/content/build/tables/*" -DDEST="zipfile/scap-security-guide-0.1.54/tables" -P /home/ec2-user/content/cmake/CopyFiles.cmake
	/usr/bin/cmake -E chdir zipfile /usr/bin/cmake -E tar cvf scap-security-guide-0.1.54.zip --format=zip scap-security-guide-0.1.54

zipfile: CMakeFiles/zipfile
zipfile: zipfile/scap-security-guide-0.1.54.zip
zipfile: CMakeFiles/zipfile.dir/build.make
.PHONY : zipfile

# Rule to build all files generated by this target.
CMakeFiles/zipfile.dir/build: zipfile
.PHONY : CMakeFiles/zipfile.dir/build

CMakeFiles/zipfile.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zipfile.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zipfile.dir/clean

CMakeFiles/zipfile.dir/depend:
	cd /home/ec2-user/content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ec2-user/content /home/ec2-user/content /home/ec2-user/content/build /home/ec2-user/content/build /home/ec2-user/content/build/CMakeFiles/zipfile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zipfile.dir/depend

