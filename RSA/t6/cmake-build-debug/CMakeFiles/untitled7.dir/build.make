# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/206/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/206/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/seed/CLionProjects/untitled7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/seed/CLionProjects/untitled7/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/untitled7.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/untitled7.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/untitled7.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/untitled7.dir/flags.make

CMakeFiles/untitled7.dir/main.c.o: CMakeFiles/untitled7.dir/flags.make
CMakeFiles/untitled7.dir/main.c.o: ../main.c
CMakeFiles/untitled7.dir/main.c.o: CMakeFiles/untitled7.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/seed/CLionProjects/untitled7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/untitled7.dir/main.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/untitled7.dir/main.c.o -MF CMakeFiles/untitled7.dir/main.c.o.d -o CMakeFiles/untitled7.dir/main.c.o -c /home/seed/CLionProjects/untitled7/main.c

CMakeFiles/untitled7.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/untitled7.dir/main.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/seed/CLionProjects/untitled7/main.c > CMakeFiles/untitled7.dir/main.c.i

CMakeFiles/untitled7.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/untitled7.dir/main.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/seed/CLionProjects/untitled7/main.c -o CMakeFiles/untitled7.dir/main.c.s

# Object files for target untitled7
untitled7_OBJECTS = \
"CMakeFiles/untitled7.dir/main.c.o"

# External object files for target untitled7
untitled7_EXTERNAL_OBJECTS =

untitled7: CMakeFiles/untitled7.dir/main.c.o
untitled7: CMakeFiles/untitled7.dir/build.make
untitled7: CMakeFiles/untitled7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/seed/CLionProjects/untitled7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable untitled7"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/untitled7.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/untitled7.dir/build: untitled7
.PHONY : CMakeFiles/untitled7.dir/build

CMakeFiles/untitled7.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/untitled7.dir/cmake_clean.cmake
.PHONY : CMakeFiles/untitled7.dir/clean

CMakeFiles/untitled7.dir/depend:
	cd /home/seed/CLionProjects/untitled7/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/seed/CLionProjects/untitled7 /home/seed/CLionProjects/untitled7 /home/seed/CLionProjects/untitled7/cmake-build-debug /home/seed/CLionProjects/untitled7/cmake-build-debug /home/seed/CLionProjects/untitled7/cmake-build-debug/CMakeFiles/untitled7.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/untitled7.dir/depend

