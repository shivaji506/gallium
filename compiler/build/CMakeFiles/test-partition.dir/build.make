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
include CMakeFiles/test-partition.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test-partition.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test-partition.dir/flags.make

CMakeFiles/test-partition.dir/exec/test-partition.cpp.o: CMakeFiles/test-partition.dir/flags.make
CMakeFiles/test-partition.dir/exec/test-partition.cpp.o: ../exec/test-partition.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Gallium-public/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test-partition.dir/exec/test-partition.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-partition.dir/exec/test-partition.cpp.o -c /Gallium-public/compiler/exec/test-partition.cpp

CMakeFiles/test-partition.dir/exec/test-partition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-partition.dir/exec/test-partition.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Gallium-public/compiler/exec/test-partition.cpp > CMakeFiles/test-partition.dir/exec/test-partition.cpp.i

CMakeFiles/test-partition.dir/exec/test-partition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-partition.dir/exec/test-partition.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Gallium-public/compiler/exec/test-partition.cpp -o CMakeFiles/test-partition.dir/exec/test-partition.cpp.s

# Object files for target test-partition
test__partition_OBJECTS = \
"CMakeFiles/test-partition.dir/exec/test-partition.cpp.o"

# External object files for target test-partition
test__partition_EXTERNAL_OBJECTS =

test-partition: CMakeFiles/test-partition.dir/exec/test-partition.cpp.o
test-partition: CMakeFiles/test-partition.dir/build.make
test-partition: /usr/lib/libLLVMSupport.a
test-partition: /usr/lib/libLLVMCore.a
test-partition: /usr/lib/libLLVMIRReader.a
test-partition: liblibgallium.a
test-partition: /usr/lib/libboost_filesystem.so.1.75.0
test-partition: /usr/lib/libLLVMIRReader.a
test-partition: /usr/lib/libLLVMAsmParser.a
test-partition: /usr/lib/libLLVMBitReader.a
test-partition: /usr/lib/libLLVMCore.a
test-partition: /usr/lib/libLLVMBinaryFormat.a
test-partition: /usr/lib/libLLVMRemarks.a
test-partition: /usr/lib/libLLVMBitstreamReader.a
test-partition: /usr/lib/libLLVMSupport.a
test-partition: /usr/lib/libLLVMDemangle.a
test-partition: CMakeFiles/test-partition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Gallium-public/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-partition"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-partition.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test-partition.dir/build: test-partition

.PHONY : CMakeFiles/test-partition.dir/build

CMakeFiles/test-partition.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test-partition.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test-partition.dir/clean

CMakeFiles/test-partition.dir/depend:
	cd /Gallium-public/compiler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Gallium-public/compiler /Gallium-public/compiler /Gallium-public/compiler/build /Gallium-public/compiler/build /Gallium-public/compiler/build/CMakeFiles/test-partition.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test-partition.dir/depend

