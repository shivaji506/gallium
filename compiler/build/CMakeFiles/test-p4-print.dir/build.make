# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Gallium-public/compiler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Gallium-public/compiler/build

# Include any dependencies generated for this target.
include CMakeFiles/test-p4-print.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test-p4-print.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test-p4-print.dir/flags.make

CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.o: CMakeFiles/test-p4-print.dir/flags.make
CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.o: ../exec/test-p4-print.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Gallium-public/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.o -c /Gallium-public/compiler/exec/test-p4-print.cpp

CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Gallium-public/compiler/exec/test-p4-print.cpp > CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.i

CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Gallium-public/compiler/exec/test-p4-print.cpp -o CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.s

# Object files for target test-p4-print
test__p4__print_OBJECTS = \
"CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.o"

# External object files for target test-p4-print
test__p4__print_EXTERNAL_OBJECTS =

test-p4-print: CMakeFiles/test-p4-print.dir/exec/test-p4-print.cpp.o
test-p4-print: CMakeFiles/test-p4-print.dir/build.make
test-p4-print: /usr/lib/libLLVMSupport.a
test-p4-print: /usr/lib/libLLVMCore.a
test-p4-print: /usr/lib/libLLVMIRReader.a
test-p4-print: liblibgallium.a
test-p4-print: /usr/lib/libboost_filesystem.so.1.75.0
test-p4-print: /usr/lib/libLLVMIRReader.a
test-p4-print: /usr/lib/libLLVMAsmParser.a
test-p4-print: /usr/lib/libLLVMBitReader.a
test-p4-print: /usr/lib/libLLVMCore.a
test-p4-print: /usr/lib/libLLVMBinaryFormat.a
test-p4-print: /usr/lib/libLLVMRemarks.a
test-p4-print: /usr/lib/libLLVMBitstreamReader.a
test-p4-print: /usr/lib/libLLVMSupport.a
test-p4-print: /usr/lib/libLLVMDemangle.a
test-p4-print: CMakeFiles/test-p4-print.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Gallium-public/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-p4-print"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-p4-print.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test-p4-print.dir/build: test-p4-print

.PHONY : CMakeFiles/test-p4-print.dir/build

CMakeFiles/test-p4-print.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test-p4-print.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test-p4-print.dir/clean

CMakeFiles/test-p4-print.dir/depend:
	cd /Gallium-public/compiler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Gallium-public/compiler /Gallium-public/compiler /Gallium-public/compiler/build /Gallium-public/compiler/build /Gallium-public/compiler/build/CMakeFiles/test-p4-print.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test-p4-print.dir/depend

