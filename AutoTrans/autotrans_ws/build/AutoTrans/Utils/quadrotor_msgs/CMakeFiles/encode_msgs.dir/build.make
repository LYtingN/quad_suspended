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
CMAKE_SOURCE_DIR = /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build

# Include any dependencies generated for this target.
include AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/depend.make

# Include the progress variables for this target.
include AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/progress.make

# Include the compile flags for this target's objects.
include AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/flags.make

AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.o: AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/flags.make
AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.o: /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/src/AutoTrans/Utils/quadrotor_msgs/src/encode_msgs.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.o"
	cd /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/AutoTrans/Utils/quadrotor_msgs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.o -c /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/src/AutoTrans/Utils/quadrotor_msgs/src/encode_msgs.cpp

AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.i"
	cd /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/AutoTrans/Utils/quadrotor_msgs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/src/AutoTrans/Utils/quadrotor_msgs/src/encode_msgs.cpp > CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.i

AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.s"
	cd /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/AutoTrans/Utils/quadrotor_msgs && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/src/AutoTrans/Utils/quadrotor_msgs/src/encode_msgs.cpp -o CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.s

# Object files for target encode_msgs
encode_msgs_OBJECTS = \
"CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.o"

# External object files for target encode_msgs
encode_msgs_EXTERNAL_OBJECTS =

/home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/devel/lib/libencode_msgs.so: AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/src/encode_msgs.cpp.o
/home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/devel/lib/libencode_msgs.so: AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/build.make
/home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/devel/lib/libencode_msgs.so: AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/devel/lib/libencode_msgs.so"
	cd /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/AutoTrans/Utils/quadrotor_msgs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/encode_msgs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/build: /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/devel/lib/libencode_msgs.so

.PHONY : AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/build

AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/clean:
	cd /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/AutoTrans/Utils/quadrotor_msgs && $(CMAKE_COMMAND) -P CMakeFiles/encode_msgs.dir/cmake_clean.cmake
.PHONY : AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/clean

AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/depend:
	cd /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/src /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/src/AutoTrans/Utils/quadrotor_msgs /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/AutoTrans/Utils/quadrotor_msgs /home/ubuntu/quad_suspended/AutoTrans/autotrans_ws/build/AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : AutoTrans/Utils/quadrotor_msgs/CMakeFiles/encode_msgs.dir/depend

