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
CMAKE_SOURCE_DIR = /Users/libowen/Study/udemy/design_pattern/code/Composite

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/libowen/Study/udemy/design_pattern/code/Composite/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Composite.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Composite.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Composite.dir/flags.make

CMakeFiles/Composite.dir/main.cpp.o: CMakeFiles/Composite.dir/flags.make
CMakeFiles/Composite.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/Composite/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Composite.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Composite.dir/main.cpp.o -c /Users/libowen/Study/udemy/design_pattern/code/Composite/main.cpp

CMakeFiles/Composite.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Composite.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/libowen/Study/udemy/design_pattern/code/Composite/main.cpp > CMakeFiles/Composite.dir/main.cpp.i

CMakeFiles/Composite.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Composite.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/libowen/Study/udemy/design_pattern/code/Composite/main.cpp -o CMakeFiles/Composite.dir/main.cpp.s

CMakeFiles/Composite.dir/exercise.cpp.o: CMakeFiles/Composite.dir/flags.make
CMakeFiles/Composite.dir/exercise.cpp.o: ../exercise.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/Composite/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Composite.dir/exercise.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Composite.dir/exercise.cpp.o -c /Users/libowen/Study/udemy/design_pattern/code/Composite/exercise.cpp

CMakeFiles/Composite.dir/exercise.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Composite.dir/exercise.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/libowen/Study/udemy/design_pattern/code/Composite/exercise.cpp > CMakeFiles/Composite.dir/exercise.cpp.i

CMakeFiles/Composite.dir/exercise.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Composite.dir/exercise.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/libowen/Study/udemy/design_pattern/code/Composite/exercise.cpp -o CMakeFiles/Composite.dir/exercise.cpp.s

# Object files for target Composite
Composite_OBJECTS = \
"CMakeFiles/Composite.dir/main.cpp.o" \
"CMakeFiles/Composite.dir/exercise.cpp.o"

# External object files for target Composite
Composite_EXTERNAL_OBJECTS =

Composite: CMakeFiles/Composite.dir/main.cpp.o
Composite: CMakeFiles/Composite.dir/exercise.cpp.o
Composite: CMakeFiles/Composite.dir/build.make
Composite: CMakeFiles/Composite.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/Composite/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Composite"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Composite.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Composite.dir/build: Composite

.PHONY : CMakeFiles/Composite.dir/build

CMakeFiles/Composite.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Composite.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Composite.dir/clean

CMakeFiles/Composite.dir/depend:
	cd /Users/libowen/Study/udemy/design_pattern/code/Composite/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/libowen/Study/udemy/design_pattern/code/Composite /Users/libowen/Study/udemy/design_pattern/code/Composite /Users/libowen/Study/udemy/design_pattern/code/Composite/cmake-build-debug /Users/libowen/Study/udemy/design_pattern/code/Composite/cmake-build-debug /Users/libowen/Study/udemy/design_pattern/code/Composite/cmake-build-debug/CMakeFiles/Composite.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Composite.dir/depend

