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
CMAKE_SOURCE_DIR = /Users/libowen/Study/udemy/design_pattern/code/Interpreter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/libowen/Study/udemy/design_pattern/code/Interpreter/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Interpreter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Interpreter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Interpreter.dir/flags.make

CMakeFiles/Interpreter.dir/main.cpp.o: CMakeFiles/Interpreter.dir/flags.make
CMakeFiles/Interpreter.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/Interpreter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Interpreter.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Interpreter.dir/main.cpp.o -c /Users/libowen/Study/udemy/design_pattern/code/Interpreter/main.cpp

CMakeFiles/Interpreter.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Interpreter.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/libowen/Study/udemy/design_pattern/code/Interpreter/main.cpp > CMakeFiles/Interpreter.dir/main.cpp.i

CMakeFiles/Interpreter.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Interpreter.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/libowen/Study/udemy/design_pattern/code/Interpreter/main.cpp -o CMakeFiles/Interpreter.dir/main.cpp.s

# Object files for target Interpreter
Interpreter_OBJECTS = \
"CMakeFiles/Interpreter.dir/main.cpp.o"

# External object files for target Interpreter
Interpreter_EXTERNAL_OBJECTS =

Interpreter: CMakeFiles/Interpreter.dir/main.cpp.o
Interpreter: CMakeFiles/Interpreter.dir/build.make
Interpreter: CMakeFiles/Interpreter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/libowen/Study/udemy/design_pattern/code/Interpreter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Interpreter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Interpreter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Interpreter.dir/build: Interpreter

.PHONY : CMakeFiles/Interpreter.dir/build

CMakeFiles/Interpreter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Interpreter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Interpreter.dir/clean

CMakeFiles/Interpreter.dir/depend:
	cd /Users/libowen/Study/udemy/design_pattern/code/Interpreter/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/libowen/Study/udemy/design_pattern/code/Interpreter /Users/libowen/Study/udemy/design_pattern/code/Interpreter /Users/libowen/Study/udemy/design_pattern/code/Interpreter/cmake-build-debug /Users/libowen/Study/udemy/design_pattern/code/Interpreter/cmake-build-debug /Users/libowen/Study/udemy/design_pattern/code/Interpreter/cmake-build-debug/CMakeFiles/Interpreter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Interpreter.dir/depend

