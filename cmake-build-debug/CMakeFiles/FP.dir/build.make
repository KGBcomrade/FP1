# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /home/kgbcomrade/clion/clion-2019.2.5/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/kgbcomrade/clion/clion-2019.2.5/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kgbcomrade/prg/FP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kgbcomrade/prg/FP/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/FP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FP.dir/flags.make

CMakeFiles/FP.dir/main.c.o: CMakeFiles/FP.dir/flags.make
CMakeFiles/FP.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kgbcomrade/prg/FP/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/FP.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/FP.dir/main.c.o   -c /home/kgbcomrade/prg/FP/main.c

CMakeFiles/FP.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/FP.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kgbcomrade/prg/FP/main.c > CMakeFiles/FP.dir/main.c.i

CMakeFiles/FP.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/FP.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kgbcomrade/prg/FP/main.c -o CMakeFiles/FP.dir/main.c.s

# Object files for target FP
FP_OBJECTS = \
"CMakeFiles/FP.dir/main.c.o"

# External object files for target FP
FP_EXTERNAL_OBJECTS =

FP: CMakeFiles/FP.dir/main.c.o
FP: CMakeFiles/FP.dir/build.make
FP: CMakeFiles/FP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kgbcomrade/prg/FP/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable FP"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FP.dir/build: FP

.PHONY : CMakeFiles/FP.dir/build

CMakeFiles/FP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FP.dir/clean

CMakeFiles/FP.dir/depend:
	cd /home/kgbcomrade/prg/FP/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kgbcomrade/prg/FP /home/kgbcomrade/prg/FP /home/kgbcomrade/prg/FP/cmake-build-debug /home/kgbcomrade/prg/FP/cmake-build-debug /home/kgbcomrade/prg/FP/cmake-build-debug/CMakeFiles/FP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FP.dir/depend

