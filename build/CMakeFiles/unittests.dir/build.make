# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /home/ubuntu/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/ubuntu/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/mohammad/cryptonite_bench

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/mohammad/cryptonite_bench/build

# Include any dependencies generated for this target.
include CMakeFiles/unittests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/unittests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/unittests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unittests.dir/flags.make

CMakeFiles/unittests.dir/src/bin/unittests.cpp.o: CMakeFiles/unittests.dir/flags.make
CMakeFiles/unittests.dir/src/bin/unittests.cpp.o: /mnt/mohammad/cryptonite_bench/src/bin/unittests.cpp
CMakeFiles/unittests.dir/src/bin/unittests.cpp.o: CMakeFiles/unittests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/mohammad/cryptonite_bench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/unittests.dir/src/bin/unittests.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/unittests.dir/src/bin/unittests.cpp.o -MF CMakeFiles/unittests.dir/src/bin/unittests.cpp.o.d -o CMakeFiles/unittests.dir/src/bin/unittests.cpp.o -c /mnt/mohammad/cryptonite_bench/src/bin/unittests.cpp

CMakeFiles/unittests.dir/src/bin/unittests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/unittests.dir/src/bin/unittests.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/mohammad/cryptonite_bench/src/bin/unittests.cpp > CMakeFiles/unittests.dir/src/bin/unittests.cpp.i

CMakeFiles/unittests.dir/src/bin/unittests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/unittests.dir/src/bin/unittests.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/mohammad/cryptonite_bench/src/bin/unittests.cpp -o CMakeFiles/unittests.dir/src/bin/unittests.cpp.s

CMakeFiles/unittests.dir/src/lib/im2col.cpp.o: CMakeFiles/unittests.dir/flags.make
CMakeFiles/unittests.dir/src/lib/im2col.cpp.o: /mnt/mohammad/cryptonite_bench/src/lib/im2col.cpp
CMakeFiles/unittests.dir/src/lib/im2col.cpp.o: CMakeFiles/unittests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/mohammad/cryptonite_bench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/unittests.dir/src/lib/im2col.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/unittests.dir/src/lib/im2col.cpp.o -MF CMakeFiles/unittests.dir/src/lib/im2col.cpp.o.d -o CMakeFiles/unittests.dir/src/lib/im2col.cpp.o -c /mnt/mohammad/cryptonite_bench/src/lib/im2col.cpp

CMakeFiles/unittests.dir/src/lib/im2col.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/unittests.dir/src/lib/im2col.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/mohammad/cryptonite_bench/src/lib/im2col.cpp > CMakeFiles/unittests.dir/src/lib/im2col.cpp.i

CMakeFiles/unittests.dir/src/lib/im2col.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/unittests.dir/src/lib/im2col.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/mohammad/cryptonite_bench/src/lib/im2col.cpp -o CMakeFiles/unittests.dir/src/lib/im2col.cpp.s

# Object files for target unittests
unittests_OBJECTS = \
"CMakeFiles/unittests.dir/src/bin/unittests.cpp.o" \
"CMakeFiles/unittests.dir/src/lib/im2col.cpp.o"

# External object files for target unittests
unittests_EXTERNAL_OBJECTS =

/mnt/mohammad/cryptonite_bench/bin/unittests: CMakeFiles/unittests.dir/src/bin/unittests.cpp.o
/mnt/mohammad/cryptonite_bench/bin/unittests: CMakeFiles/unittests.dir/src/lib/im2col.cpp.o
/mnt/mohammad/cryptonite_bench/bin/unittests: CMakeFiles/unittests.dir/build.make
/mnt/mohammad/cryptonite_bench/bin/unittests: libDelphiOffline.a
/mnt/mohammad/cryptonite_bench/bin/unittests: _deps/seal-build/lib/libseal-3.6.a
/mnt/mohammad/cryptonite_bench/bin/unittests: /usr/lib/gcc/x86_64-linux-gnu/11/libgomp.so
/mnt/mohammad/cryptonite_bench/bin/unittests: /usr/lib/x86_64-linux-gnu/libpthread.a
/mnt/mohammad/cryptonite_bench/bin/unittests: CMakeFiles/unittests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/mohammad/cryptonite_bench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /mnt/mohammad/cryptonite_bench/bin/unittests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unittests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unittests.dir/build: /mnt/mohammad/cryptonite_bench/bin/unittests
.PHONY : CMakeFiles/unittests.dir/build

CMakeFiles/unittests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unittests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unittests.dir/clean

CMakeFiles/unittests.dir/depend:
	cd /mnt/mohammad/cryptonite_bench/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/mohammad/cryptonite_bench /mnt/mohammad/cryptonite_bench /mnt/mohammad/cryptonite_bench/build /mnt/mohammad/cryptonite_bench/build /mnt/mohammad/cryptonite_bench/build/CMakeFiles/unittests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/unittests.dir/depend

