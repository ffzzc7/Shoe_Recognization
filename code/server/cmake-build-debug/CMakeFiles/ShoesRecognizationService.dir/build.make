# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ffzzc7/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ffzzc7/test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ShoesRecognizationService.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ShoesRecognizationService.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ShoesRecognizationService.dir/flags.make

CMakeFiles/ShoesRecognizationService.dir/main.cpp.o: CMakeFiles/ShoesRecognizationService.dir/flags.make
CMakeFiles/ShoesRecognizationService.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ffzzc7/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ShoesRecognizationService.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShoesRecognizationService.dir/main.cpp.o -c /home/ffzzc7/test/main.cpp

CMakeFiles/ShoesRecognizationService.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShoesRecognizationService.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ffzzc7/test/main.cpp > CMakeFiles/ShoesRecognizationService.dir/main.cpp.i

CMakeFiles/ShoesRecognizationService.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShoesRecognizationService.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ffzzc7/test/main.cpp -o CMakeFiles/ShoesRecognizationService.dir/main.cpp.s

CMakeFiles/ShoesRecognizationService.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/ShoesRecognizationService.dir/main.cpp.o.requires

CMakeFiles/ShoesRecognizationService.dir/main.cpp.o.provides: CMakeFiles/ShoesRecognizationService.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/ShoesRecognizationService.dir/build.make CMakeFiles/ShoesRecognizationService.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/ShoesRecognizationService.dir/main.cpp.o.provides

CMakeFiles/ShoesRecognizationService.dir/main.cpp.o.provides.build: CMakeFiles/ShoesRecognizationService.dir/main.cpp.o


CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o: CMakeFiles/ShoesRecognizationService.dir/flags.make
CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o: ../shoesRecognization_Intetface_shoesrecognization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ffzzc7/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o -c /home/ffzzc7/test/shoesRecognization_Intetface_shoesrecognization.cc

CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ffzzc7/test/shoesRecognization_Intetface_shoesrecognization.cc > CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.i

CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ffzzc7/test/shoesRecognization_Intetface_shoesrecognization.cc -o CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.s

CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o.requires:

.PHONY : CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o.requires

CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o.provides: CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o.requires
	$(MAKE) -f CMakeFiles/ShoesRecognizationService.dir/build.make CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o.provides.build
.PHONY : CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o.provides

CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o.provides.build: CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o


# Object files for target ShoesRecognizationService
ShoesRecognizationService_OBJECTS = \
"CMakeFiles/ShoesRecognizationService.dir/main.cpp.o" \
"CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o"

# External object files for target ShoesRecognizationService
ShoesRecognizationService_EXTERNAL_OBJECTS =

ShoesRecognizationService: CMakeFiles/ShoesRecognizationService.dir/main.cpp.o
ShoesRecognizationService: CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o
ShoesRecognizationService: CMakeFiles/ShoesRecognizationService.dir/build.make
ShoesRecognizationService: /usr/local/lib/libdrogon.a
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_dnn.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_ml.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_objdetect.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_shape.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_stitching.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_superres.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_videostab.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/libtorch/lib/libtorch.so
ShoesRecognizationService: /home/ffzzc7/wyz/libtorch/lib/libc10.so
ShoesRecognizationService: /usr/local/lib/libtrantor.a
ShoesRecognizationService: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
ShoesRecognizationService: /usr/lib/x86_64-linux-gnu/libuuid.so
ShoesRecognizationService: /usr/lib/x86_64-linux-gnu/libz.so
ShoesRecognizationService: /usr/lib/x86_64-linux-gnu/libssl.so
ShoesRecognizationService: /usr/lib/x86_64-linux-gnu/libcrypto.so
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_calib3d.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_features2d.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_flann.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_highgui.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_photo.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_video.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_videoio.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_imgcodecs.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_imgproc.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/opencv-3.4.1/build/lib/libopencv_core.so.3.4.1
ShoesRecognizationService: /home/ffzzc7/wyz/libtorch/lib/libc10.so
ShoesRecognizationService: CMakeFiles/ShoesRecognizationService.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ffzzc7/test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ShoesRecognizationService"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ShoesRecognizationService.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ShoesRecognizationService.dir/build: ShoesRecognizationService

.PHONY : CMakeFiles/ShoesRecognizationService.dir/build

CMakeFiles/ShoesRecognizationService.dir/requires: CMakeFiles/ShoesRecognizationService.dir/main.cpp.o.requires
CMakeFiles/ShoesRecognizationService.dir/requires: CMakeFiles/ShoesRecognizationService.dir/shoesRecognization_Intetface_shoesrecognization.cc.o.requires

.PHONY : CMakeFiles/ShoesRecognizationService.dir/requires

CMakeFiles/ShoesRecognizationService.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ShoesRecognizationService.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ShoesRecognizationService.dir/clean

CMakeFiles/ShoesRecognizationService.dir/depend:
	cd /home/ffzzc7/test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ffzzc7/test /home/ffzzc7/test /home/ffzzc7/test/cmake-build-debug /home/ffzzc7/test/cmake-build-debug /home/ffzzc7/test/cmake-build-debug/CMakeFiles/ShoesRecognizationService.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ShoesRecognizationService.dir/depend

