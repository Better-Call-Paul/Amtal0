# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Caskroom/miniconda/base/lib/python3.12/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Caskroom/miniconda/base/lib/python3.12/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/paulchan/Documents/GitHub/Amtal0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/paulchan/Documents/GitHub/Amtal0/build

# Include any dependencies generated for this target.
include CMakeFiles/Amtal.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Amtal.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Amtal.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Amtal.dir/flags.make

CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o: CMakeFiles/Amtal.dir/flags.make
CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o: /Users/paulchan/Documents/GitHub/Amtal0/backend/src/ApplicationEngine/connection_pool.cpp
CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o: CMakeFiles/Amtal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Documents/GitHub/Amtal0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o -MF CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o.d -o CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o -c /Users/paulchan/Documents/GitHub/Amtal0/backend/src/ApplicationEngine/connection_pool.cpp

CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Documents/GitHub/Amtal0/backend/src/ApplicationEngine/connection_pool.cpp > CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.i

CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Documents/GitHub/Amtal0/backend/src/ApplicationEngine/connection_pool.cpp -o CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.s

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o: CMakeFiles/Amtal.dir/flags.make
CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o: /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_app.cpp
CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o: CMakeFiles/Amtal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Documents/GitHub/Amtal0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o -MF CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o.d -o CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o -c /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_app.cpp

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_app.cpp > CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.i

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_app.cpp -o CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.s

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o: CMakeFiles/Amtal.dir/flags.make
CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o: /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_client.cpp
CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o: CMakeFiles/Amtal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Documents/GitHub/Amtal0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o -MF CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o.d -o CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o -c /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_client.cpp

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_client.cpp > CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.i

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_client.cpp -o CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.s

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o: CMakeFiles/Amtal.dir/flags.make
CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o: /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_pipeline.cpp
CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o: CMakeFiles/Amtal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Documents/GitHub/Amtal0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o -MF CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o.d -o CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o -c /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_pipeline.cpp

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_pipeline.cpp > CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.i

CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Documents/GitHub/Amtal0/backend/src/DataLayer/data_pipeline.cpp -o CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.s

CMakeFiles/Amtal.dir/backend/src/main.cpp.o: CMakeFiles/Amtal.dir/flags.make
CMakeFiles/Amtal.dir/backend/src/main.cpp.o: /Users/paulchan/Documents/GitHub/Amtal0/backend/src/main.cpp
CMakeFiles/Amtal.dir/backend/src/main.cpp.o: CMakeFiles/Amtal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Documents/GitHub/Amtal0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Amtal.dir/backend/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Amtal.dir/backend/src/main.cpp.o -MF CMakeFiles/Amtal.dir/backend/src/main.cpp.o.d -o CMakeFiles/Amtal.dir/backend/src/main.cpp.o -c /Users/paulchan/Documents/GitHub/Amtal0/backend/src/main.cpp

CMakeFiles/Amtal.dir/backend/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Amtal.dir/backend/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Documents/GitHub/Amtal0/backend/src/main.cpp > CMakeFiles/Amtal.dir/backend/src/main.cpp.i

CMakeFiles/Amtal.dir/backend/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Amtal.dir/backend/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Documents/GitHub/Amtal0/backend/src/main.cpp -o CMakeFiles/Amtal.dir/backend/src/main.cpp.s

CMakeFiles/Amtal.dir/backend/src/utils.cpp.o: CMakeFiles/Amtal.dir/flags.make
CMakeFiles/Amtal.dir/backend/src/utils.cpp.o: /Users/paulchan/Documents/GitHub/Amtal0/backend/src/utils.cpp
CMakeFiles/Amtal.dir/backend/src/utils.cpp.o: CMakeFiles/Amtal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Documents/GitHub/Amtal0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Amtal.dir/backend/src/utils.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Amtal.dir/backend/src/utils.cpp.o -MF CMakeFiles/Amtal.dir/backend/src/utils.cpp.o.d -o CMakeFiles/Amtal.dir/backend/src/utils.cpp.o -c /Users/paulchan/Documents/GitHub/Amtal0/backend/src/utils.cpp

CMakeFiles/Amtal.dir/backend/src/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Amtal.dir/backend/src/utils.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Documents/GitHub/Amtal0/backend/src/utils.cpp > CMakeFiles/Amtal.dir/backend/src/utils.cpp.i

CMakeFiles/Amtal.dir/backend/src/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Amtal.dir/backend/src/utils.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Documents/GitHub/Amtal0/backend/src/utils.cpp -o CMakeFiles/Amtal.dir/backend/src/utils.cpp.s

# Object files for target Amtal
Amtal_OBJECTS = \
"CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o" \
"CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o" \
"CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o" \
"CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o" \
"CMakeFiles/Amtal.dir/backend/src/main.cpp.o" \
"CMakeFiles/Amtal.dir/backend/src/utils.cpp.o"

# External object files for target Amtal
Amtal_EXTERNAL_OBJECTS =

bin/Amtal: CMakeFiles/Amtal.dir/backend/src/ApplicationEngine/connection_pool.cpp.o
bin/Amtal: CMakeFiles/Amtal.dir/backend/src/DataLayer/data_app.cpp.o
bin/Amtal: CMakeFiles/Amtal.dir/backend/src/DataLayer/data_client.cpp.o
bin/Amtal: CMakeFiles/Amtal.dir/backend/src/DataLayer/data_pipeline.cpp.o
bin/Amtal: CMakeFiles/Amtal.dir/backend/src/main.cpp.o
bin/Amtal: CMakeFiles/Amtal.dir/backend/src/utils.cpp.o
bin/Amtal: CMakeFiles/Amtal.dir/build.make
bin/Amtal: /opt/homebrew/lib/libboost_system-mt.dylib
bin/Amtal: /opt/homebrew/lib/libboost_thread-mt.dylib
bin/Amtal: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/lib/libcurl.tbd
bin/Amtal: CMakeFiles/Amtal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/paulchan/Documents/GitHub/Amtal0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable bin/Amtal"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Amtal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Amtal.dir/build: bin/Amtal
.PHONY : CMakeFiles/Amtal.dir/build

CMakeFiles/Amtal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Amtal.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Amtal.dir/clean

CMakeFiles/Amtal.dir/depend:
	cd /Users/paulchan/Documents/GitHub/Amtal0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/paulchan/Documents/GitHub/Amtal0 /Users/paulchan/Documents/GitHub/Amtal0 /Users/paulchan/Documents/GitHub/Amtal0/build /Users/paulchan/Documents/GitHub/Amtal0/build /Users/paulchan/Documents/GitHub/Amtal0/build/CMakeFiles/Amtal.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Amtal.dir/depend

