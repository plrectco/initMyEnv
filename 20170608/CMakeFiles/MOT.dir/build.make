# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/sam/Desktop/20170608

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sam/Desktop/20170608

# Include any dependencies generated for this target.
include CMakeFiles/MOT.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MOT.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MOT.dir/flags.make

CMakeFiles/MOT.dir/main.cpp.o: CMakeFiles/MOT.dir/flags.make
CMakeFiles/MOT.dir/main.cpp.o: main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sam/Desktop/20170608/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MOT.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MOT.dir/main.cpp.o -c /home/sam/Desktop/20170608/main.cpp

CMakeFiles/MOT.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MOT.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sam/Desktop/20170608/main.cpp > CMakeFiles/MOT.dir/main.cpp.i

CMakeFiles/MOT.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MOT.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sam/Desktop/20170608/main.cpp -o CMakeFiles/MOT.dir/main.cpp.s

CMakeFiles/MOT.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/MOT.dir/main.cpp.o.requires

CMakeFiles/MOT.dir/main.cpp.o.provides: CMakeFiles/MOT.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/MOT.dir/build.make CMakeFiles/MOT.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/MOT.dir/main.cpp.o.provides

CMakeFiles/MOT.dir/main.cpp.o.provides.build: CMakeFiles/MOT.dir/main.cpp.o

CMakeFiles/MOT.dir/Vector2.cpp.o: CMakeFiles/MOT.dir/flags.make
CMakeFiles/MOT.dir/Vector2.cpp.o: Vector2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sam/Desktop/20170608/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MOT.dir/Vector2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MOT.dir/Vector2.cpp.o -c /home/sam/Desktop/20170608/Vector2.cpp

CMakeFiles/MOT.dir/Vector2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MOT.dir/Vector2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sam/Desktop/20170608/Vector2.cpp > CMakeFiles/MOT.dir/Vector2.cpp.i

CMakeFiles/MOT.dir/Vector2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MOT.dir/Vector2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sam/Desktop/20170608/Vector2.cpp -o CMakeFiles/MOT.dir/Vector2.cpp.s

CMakeFiles/MOT.dir/Vector2.cpp.o.requires:
.PHONY : CMakeFiles/MOT.dir/Vector2.cpp.o.requires

CMakeFiles/MOT.dir/Vector2.cpp.o.provides: CMakeFiles/MOT.dir/Vector2.cpp.o.requires
	$(MAKE) -f CMakeFiles/MOT.dir/build.make CMakeFiles/MOT.dir/Vector2.cpp.o.provides.build
.PHONY : CMakeFiles/MOT.dir/Vector2.cpp.o.provides

CMakeFiles/MOT.dir/Vector2.cpp.o.provides.build: CMakeFiles/MOT.dir/Vector2.cpp.o

# Object files for target MOT
MOT_OBJECTS = \
"CMakeFiles/MOT.dir/main.cpp.o" \
"CMakeFiles/MOT.dir/Vector2.cpp.o"

# External object files for target MOT
MOT_EXTERNAL_OBJECTS =

MOT: CMakeFiles/MOT.dir/main.cpp.o
MOT: CMakeFiles/MOT.dir/Vector2.cpp.o
MOT: CMakeFiles/MOT.dir/build.make
MOT: /usr/local/lib/libopencv_videostab.so.3.1.0
MOT: /usr/local/lib/libopencv_videoio.so.3.1.0
MOT: /usr/local/lib/libopencv_video.so.3.1.0
MOT: /usr/local/lib/libopencv_superres.so.3.1.0
MOT: /usr/local/lib/libopencv_stitching.so.3.1.0
MOT: /usr/local/lib/libopencv_shape.so.3.1.0
MOT: /usr/local/lib/libopencv_photo.so.3.1.0
MOT: /usr/local/lib/libopencv_objdetect.so.3.1.0
MOT: /usr/local/lib/libopencv_ml.so.3.1.0
MOT: /usr/local/lib/libopencv_imgproc.so.3.1.0
MOT: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
MOT: /usr/local/lib/libopencv_highgui.so.3.1.0
MOT: /usr/local/lib/libopencv_flann.so.3.1.0
MOT: /usr/local/lib/libopencv_features2d.so.3.1.0
MOT: /usr/local/lib/libopencv_core.so.3.1.0
MOT: /usr/local/lib/libopencv_calib3d.so.3.1.0
MOT: /usr/local/lib/libopencv_features2d.so.3.1.0
MOT: /usr/local/lib/libopencv_ml.so.3.1.0
MOT: /usr/local/lib/libopencv_highgui.so.3.1.0
MOT: /usr/local/lib/libopencv_videoio.so.3.1.0
MOT: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
MOT: /usr/local/lib/libopencv_flann.so.3.1.0
MOT: /usr/local/lib/libopencv_video.so.3.1.0
MOT: /usr/local/lib/libopencv_imgproc.so.3.1.0
MOT: /usr/local/lib/libopencv_core.so.3.1.0
MOT: CMakeFiles/MOT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable MOT"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MOT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MOT.dir/build: MOT
.PHONY : CMakeFiles/MOT.dir/build

CMakeFiles/MOT.dir/requires: CMakeFiles/MOT.dir/main.cpp.o.requires
CMakeFiles/MOT.dir/requires: CMakeFiles/MOT.dir/Vector2.cpp.o.requires
.PHONY : CMakeFiles/MOT.dir/requires

CMakeFiles/MOT.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MOT.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MOT.dir/clean

CMakeFiles/MOT.dir/depend:
	cd /home/sam/Desktop/20170608 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/Desktop/20170608 /home/sam/Desktop/20170608 /home/sam/Desktop/20170608 /home/sam/Desktop/20170608 /home/sam/Desktop/20170608/CMakeFiles/MOT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MOT.dir/depend

