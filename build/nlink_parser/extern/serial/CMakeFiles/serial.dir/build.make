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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/inin/weihe_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/inin/weihe_ws/build

# Include any dependencies generated for this target.
include nlink_parser/extern/serial/CMakeFiles/serial.dir/depend.make

# Include the progress variables for this target.
include nlink_parser/extern/serial/CMakeFiles/serial.dir/progress.make

# Include the compile flags for this target's objects.
include nlink_parser/extern/serial/CMakeFiles/serial.dir/flags.make

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/serial.cc.o: nlink_parser/extern/serial/CMakeFiles/serial.dir/flags.make
nlink_parser/extern/serial/CMakeFiles/serial.dir/src/serial.cc.o: /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/serial.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/inin/weihe_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object nlink_parser/extern/serial/CMakeFiles/serial.dir/src/serial.cc.o"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/serial.cc.o -c /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/serial.cc

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/serial.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/serial.cc.i"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/serial.cc > CMakeFiles/serial.dir/src/serial.cc.i

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/serial.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/serial.cc.s"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/serial.cc -o CMakeFiles/serial.dir/src/serial.cc.s

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o: nlink_parser/extern/serial/CMakeFiles/serial.dir/flags.make
nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o: /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/impl/unix.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/inin/weihe_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/impl/unix.cc.o -c /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/impl/unix.cc

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/unix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/impl/unix.cc.i"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/impl/unix.cc > CMakeFiles/serial.dir/src/impl/unix.cc.i

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/unix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/impl/unix.cc.s"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/impl/unix.cc -o CMakeFiles/serial.dir/src/impl/unix.cc.s

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o: nlink_parser/extern/serial/CMakeFiles/serial.dir/flags.make
nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o: /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/impl/list_ports/list_ports_linux.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/inin/weihe_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o -c /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/impl/list_ports/list_ports_linux.cc

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/impl/list_ports/list_ports_linux.cc > CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.i

nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/inin/weihe_ws/src/nlink_parser/extern/serial/src/impl/list_ports/list_ports_linux.cc -o CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.s

# Object files for target serial
serial_OBJECTS = \
"CMakeFiles/serial.dir/src/serial.cc.o" \
"CMakeFiles/serial.dir/src/impl/unix.cc.o" \
"CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o"

# External object files for target serial
serial_EXTERNAL_OBJECTS =

/home/inin/weihe_ws/devel/lib/libserial.so: nlink_parser/extern/serial/CMakeFiles/serial.dir/src/serial.cc.o
/home/inin/weihe_ws/devel/lib/libserial.so: nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/unix.cc.o
/home/inin/weihe_ws/devel/lib/libserial.so: nlink_parser/extern/serial/CMakeFiles/serial.dir/src/impl/list_ports/list_ports_linux.cc.o
/home/inin/weihe_ws/devel/lib/libserial.so: nlink_parser/extern/serial/CMakeFiles/serial.dir/build.make
/home/inin/weihe_ws/devel/lib/libserial.so: nlink_parser/extern/serial/CMakeFiles/serial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/inin/weihe_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/inin/weihe_ws/devel/lib/libserial.so"
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
nlink_parser/extern/serial/CMakeFiles/serial.dir/build: /home/inin/weihe_ws/devel/lib/libserial.so

.PHONY : nlink_parser/extern/serial/CMakeFiles/serial.dir/build

nlink_parser/extern/serial/CMakeFiles/serial.dir/clean:
	cd /home/inin/weihe_ws/build/nlink_parser/extern/serial && $(CMAKE_COMMAND) -P CMakeFiles/serial.dir/cmake_clean.cmake
.PHONY : nlink_parser/extern/serial/CMakeFiles/serial.dir/clean

nlink_parser/extern/serial/CMakeFiles/serial.dir/depend:
	cd /home/inin/weihe_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/inin/weihe_ws/src /home/inin/weihe_ws/src/nlink_parser/extern/serial /home/inin/weihe_ws/build /home/inin/weihe_ws/build/nlink_parser/extern/serial /home/inin/weihe_ws/build/nlink_parser/extern/serial/CMakeFiles/serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nlink_parser/extern/serial/CMakeFiles/serial.dir/depend

