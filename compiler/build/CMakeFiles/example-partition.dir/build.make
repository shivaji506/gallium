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
include CMakeFiles/example-partition.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/example-partition.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example-partition.dir/flags.make

CMakeFiles/example-partition.dir/exec/example-partition.cpp.o: CMakeFiles/example-partition.dir/flags.make
CMakeFiles/example-partition.dir/exec/example-partition.cpp.o: ../exec/example-partition.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Gallium-public/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example-partition.dir/exec/example-partition.cpp.o"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example-partition.dir/exec/example-partition.cpp.o -c /Gallium-public/compiler/exec/example-partition.cpp

CMakeFiles/example-partition.dir/exec/example-partition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example-partition.dir/exec/example-partition.cpp.i"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Gallium-public/compiler/exec/example-partition.cpp > CMakeFiles/example-partition.dir/exec/example-partition.cpp.i

CMakeFiles/example-partition.dir/exec/example-partition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example-partition.dir/exec/example-partition.cpp.s"
	/usr/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Gallium-public/compiler/exec/example-partition.cpp -o CMakeFiles/example-partition.dir/exec/example-partition.cpp.s

# Object files for target example-partition
example__partition_OBJECTS = \
"CMakeFiles/example-partition.dir/exec/example-partition.cpp.o"

# External object files for target example-partition
example__partition_EXTERNAL_OBJECTS =

example-partition: CMakeFiles/example-partition.dir/exec/example-partition.cpp.o
example-partition: CMakeFiles/example-partition.dir/build.make
example-partition: /usr/lib/libLLVMSupport.a
example-partition: /usr/lib/libLLVMCore.a
example-partition: /usr/lib/libLLVMIRReader.a
example-partition: liblibgallium.a
example-partition: /usr/lib/libboost_filesystem.so.1.75.0
example-partition: /usr/lib/libLLVMIRReader.a
example-partition: /usr/lib/libLLVMAsmParser.a
example-partition: /usr/lib/libLLVMBitReader.a
example-partition: /usr/lib/libLLVMCore.a
example-partition: /usr/lib/libLLVMBinaryFormat.a
example-partition: /usr/lib/libLLVMRemarks.a
example-partition: /usr/lib/libLLVMBitstreamReader.a
example-partition: /usr/lib/libLLVMSupport.a
example-partition: /usr/lib/libLLVMDemangle.a
example-partition: CMakeFiles/example-partition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Gallium-public/compiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example-partition"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example-partition.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example-partition.dir/build: example-partition

.PHONY : CMakeFiles/example-partition.dir/build

CMakeFiles/example-partition.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example-partition.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example-partition.dir/clean

CMakeFiles/example-partition.dir/depend:
	cd /Gallium-public/compiler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Gallium-public/compiler /Gallium-public/compiler /Gallium-public/compiler/build /Gallium-public/compiler/build /Gallium-public/compiler/build/CMakeFiles/example-partition.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/example-partition.dir/depend

