# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/libowen/Study/udemy/design_pattern/code/Mediator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/libowen/Study/udemy/design_pattern/code/Mediator/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Mediator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Mediator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Mediator.dir/flags.make

CMakeFiles/Mediator.dir/main.cpp.o: CMakeFiles/Mediator.dir/flags.make
CMakeFiles/Mediator.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/Mediator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Mediator.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Mediator.dir/main.cpp.o -c /Users/libowen/Study/udemy/design_pattern/code/Mediator/main.cpp

CMakeFiles/Mediator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mediator.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/libowen/Study/udemy/design_pattern/code/Mediator/main.cpp > CMakeFiles/Mediator.dir/main.cpp.i

CMakeFiles/Mediator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mediator.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/libowen/Study/udemy/design_pattern/code/Mediator/main.cpp -o CMakeFiles/Mediator.dir/main.cpp.s

# Object files for target Mediator
Mediator_OBJECTS = \
"CMakeFiles/Mediator.dir/main.cpp.o"

# External object files for target Mediator
Mediator_EXTERNAL_OBJECTS =

Mediator: CMakeFiles/Mediator.dir/main.cpp.o
Mediator: CMakeFiles/Mediator.dir/build.make
Mediator: CMakeFiles/Mediator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/Mediator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Mediator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Mediator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Mediator.dir/build: Mediator

.PHONY : CMakeFiles/Mediator.dir/build

CMakeFiles/Mediator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Mediator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Mediator.dir/clean

CMakeFiles/Mediator.dir/depend:
	cd /Users/libowen/Study/udemy/design_pattern/code/Mediator/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/libowen/Study/udemy/design_pattern/code/Mediator /Users/libowen/Study/udemy/design_pattern/code/Mediator /Users/libowen/Study/udemy/design_pattern/code/Mediator/cmake-build-debug /Users/libowen/Study/udemy/design_pattern/code/Mediator/cmake-build-debug /Users/libowen/Study/udemy/design_pattern/code/Mediator/cmake-build-debug/CMakeFiles/Mediator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Mediator.dir/depend
