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

# Utility rule file for man_page.

# Include the progress variables for this target.
include CMakeFiles/man_page.dir/progress.make

CMakeFiles/man_page: scap-security-guide.8

scap-security-guide.8:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ec2-user/content/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[man-page] generating man page"
	env PYTHONPATH=/home/ec2-user/content /usr/bin/python /home/ec2-user/content/build-scripts/generate_man_page.py --template /home/ec2-user/content/docs/man_page_template.jinja --input_dir /home/ec2-user/content/build --output /home/ec2-user/content/build/scap-security-guide.8

man_page: CMakeFiles/man_page
man_page: scap-security-guide.8
man_page: CMakeFiles/man_page.dir/build.make
.PHONY : man_page

# Rule to build all files generated by this target.
CMakeFiles/man_page.dir/build: man_page
.PHONY : CMakeFiles/man_page.dir/build

CMakeFiles/man_page.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/man_page.dir/cmake_clean.cmake
.PHONY : CMakeFiles/man_page.dir/clean

CMakeFiles/man_page.dir/depend:
	cd /home/ec2-user/content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ec2-user/content /home/ec2-user/content /home/ec2-user/content/build /home/ec2-user/content/build /home/ec2-user/content/build/CMakeFiles/man_page.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/man_page.dir/depend

