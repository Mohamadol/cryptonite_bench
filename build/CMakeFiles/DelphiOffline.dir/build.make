# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/mohamadolyaiy/cryptonite_bench

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mohamadolyaiy/cryptonite_bench/build

# Include any dependencies generated for this target.
include CMakeFiles/DelphiOffline.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DelphiOffline.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DelphiOffline.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DelphiOffline.dir/flags.make

CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o: CMakeFiles/DelphiOffline.dir/flags.make
CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o: ../src/lib/interface.cpp
CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o: CMakeFiles/DelphiOffline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamadolyaiy/cryptonite_bench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o -MF CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o.d -o CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o -c /home/mohamadolyaiy/cryptonite_bench/src/lib/interface.cpp

CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohamadolyaiy/cryptonite_bench/src/lib/interface.cpp > CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.i

CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohamadolyaiy/cryptonite_bench/src/lib/interface.cpp -o CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.s

CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o: CMakeFiles/DelphiOffline.dir/flags.make
CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o: ../src/lib/conv2d.cpp
CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o: CMakeFiles/DelphiOffline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamadolyaiy/cryptonite_bench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o -MF CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o.d -o CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o -c /home/mohamadolyaiy/cryptonite_bench/src/lib/conv2d.cpp

CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohamadolyaiy/cryptonite_bench/src/lib/conv2d.cpp > CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.i

CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohamadolyaiy/cryptonite_bench/src/lib/conv2d.cpp -o CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.s

CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o: CMakeFiles/DelphiOffline.dir/flags.make
CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o: ../src/lib/fc_layer.cpp
CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o: CMakeFiles/DelphiOffline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamadolyaiy/cryptonite_bench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o -MF CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o.d -o CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o -c /home/mohamadolyaiy/cryptonite_bench/src/lib/fc_layer.cpp

CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohamadolyaiy/cryptonite_bench/src/lib/fc_layer.cpp > CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.i

CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohamadolyaiy/cryptonite_bench/src/lib/fc_layer.cpp -o CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.s

CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o: CMakeFiles/DelphiOffline.dir/flags.make
CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o: ../src/lib/triples_gen.cpp
CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o: CMakeFiles/DelphiOffline.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamadolyaiy/cryptonite_bench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o -MF CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o.d -o CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o -c /home/mohamadolyaiy/cryptonite_bench/src/lib/triples_gen.cpp

CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohamadolyaiy/cryptonite_bench/src/lib/triples_gen.cpp > CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.i

CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohamadolyaiy/cryptonite_bench/src/lib/triples_gen.cpp -o CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.s

# Object files for target DelphiOffline
DelphiOffline_OBJECTS = \
"CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o" \
"CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o" \
"CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o" \
"CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o"

# External object files for target DelphiOffline
DelphiOffline_EXTERNAL_OBJECTS =

libDelphiOffline.a: CMakeFiles/DelphiOffline.dir/src/lib/interface.cpp.o
libDelphiOffline.a: CMakeFiles/DelphiOffline.dir/src/lib/conv2d.cpp.o
libDelphiOffline.a: CMakeFiles/DelphiOffline.dir/src/lib/fc_layer.cpp.o
libDelphiOffline.a: CMakeFiles/DelphiOffline.dir/src/lib/triples_gen.cpp.o
libDelphiOffline.a: CMakeFiles/DelphiOffline.dir/build.make
libDelphiOffline.a: CMakeFiles/DelphiOffline.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mohamadolyaiy/cryptonite_bench/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libDelphiOffline.a"
	$(CMAKE_COMMAND) -P CMakeFiles/DelphiOffline.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DelphiOffline.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DelphiOffline.dir/build: libDelphiOffline.a
.PHONY : CMakeFiles/DelphiOffline.dir/build

CMakeFiles/DelphiOffline.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DelphiOffline.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DelphiOffline.dir/clean

CMakeFiles/DelphiOffline.dir/depend:
	cd /home/mohamadolyaiy/cryptonite_bench/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mohamadolyaiy/cryptonite_bench /home/mohamadolyaiy/cryptonite_bench /home/mohamadolyaiy/cryptonite_bench/build /home/mohamadolyaiy/cryptonite_bench/build /home/mohamadolyaiy/cryptonite_bench/build/CMakeFiles/DelphiOffline.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DelphiOffline.dir/depend

