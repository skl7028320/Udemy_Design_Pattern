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
CMAKE_SOURCE_DIR = /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/InterfaceSegregationPrinciple.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/InterfaceSegregationPrinciple.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/InterfaceSegregationPrinciple.dir/flags.make

CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.o: CMakeFiles/InterfaceSegregationPrinciple.dir/flags.make
CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.o -c /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/main.cpp

CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/main.cpp > CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.i

CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/main.cpp -o CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.s

# Object files for target InterfaceSegregationPrinciple
InterfaceSegregationPrinciple_OBJECTS = \
"CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.o"

# External object files for target InterfaceSegregationPrinciple
InterfaceSegregationPrinciple_EXTERNAL_OBJECTS =

InterfaceSegregationPrinciple: CMakeFiles/InterfaceSegregationPrinciple.dir/main.cpp.o
InterfaceSegregationPrinciple: CMakeFiles/InterfaceSegregationPrinciple.dir/build.make
InterfaceSegregationPrinciple: CMakeFiles/InterfaceSegregationPrinciple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable InterfaceSegregationPrinciple"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/InterfaceSegregationPrinciple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/InterfaceSegregationPrinciple.dir/build: InterfaceSegregationPrinciple

.PHONY : CMakeFiles/InterfaceSegregationPrinciple.dir/build

CMakeFiles/InterfaceSegregationPrinciple.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/InterfaceSegregationPrinciple.dir/cmake_clean.cmake
.PHONY : CMakeFiles/InterfaceSegregationPrinciple.dir/clean

CMakeFiles/InterfaceSegregationPrinciple.dir/depend:
	cd /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/cmake-build-debug /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/cmake-build-debug /Users/libowen/Study/udemy/design_pattern/code/InterfaceSegregationPrinciple/cmake-build-debug/CMakeFiles/InterfaceSegregationPrinciple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/InterfaceSegregationPrinciple.dir/depend

