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

# Utility rule file for profile-stats.

# Include the progress variables for this target.
include CMakeFiles/profile-stats.dir/progress.make

CMakeFiles/profile-stats:

profile-stats: CMakeFiles/profile-stats
profile-stats: CMakeFiles/profile-stats.dir/build.make
.PHONY : profile-stats

# Rule to build all files generated by this target.
CMakeFiles/profile-stats.dir/build: profile-stats
.PHONY : CMakeFiles/profile-stats.dir/build

CMakeFiles/profile-stats.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/profile-stats.dir/cmake_clean.cmake
.PHONY : CMakeFiles/profile-stats.dir/clean

CMakeFiles/profile-stats.dir/depend:
	cd /home/ec2-user/content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ec2-user/content /home/ec2-user/content /home/ec2-user/content/build /home/ec2-user/content/build /home/ec2-user/content/build/CMakeFiles/profile-stats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/profile-stats.dir/depend

