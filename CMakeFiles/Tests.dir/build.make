# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/paulchan/Desktop/projects/Amtal0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/paulchan/Desktop/projects/Amtal0

# Include any dependencies generated for this target.
include CMakeFiles/Tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Tests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tests.dir/flags.make

CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o: tests/cpp/OrderBookTest.cpp
CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o -MF CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o.d -o CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/OrderBookTest.cpp

CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/OrderBookTest.cpp > CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.i

CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/OrderBookTest.cpp -o CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.s

CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o: tests/cpp/OrderTest.cpp
CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o -MF CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o.d -o CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/OrderTest.cpp

CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/OrderTest.cpp > CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.i

CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/OrderTest.cpp -o CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.s

CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o: tests/cpp/UtilsTest.cpp
CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o -MF CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o.d -o CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/UtilsTest.cpp

CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/UtilsTest.cpp > CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.i

CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/tests/cpp/UtilsTest.cpp -o CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.s

CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o: src/cpp/core/FeedHandler.cpp
CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/FeedHandler.cpp

CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/FeedHandler.cpp > CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.i

CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/FeedHandler.cpp -o CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.s

CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o: src/cpp/core/ObjectPool.cpp
CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/ObjectPool.cpp

CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/ObjectPool.cpp > CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.i

CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/ObjectPool.cpp -o CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.s

CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o: src/cpp/core/Order.cpp
CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/Order.cpp

CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/Order.cpp > CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.i

CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/Order.cpp -o CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.s

CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o: src/cpp/core/OrderBook.cpp
CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/OrderBook.cpp

CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/OrderBook.cpp > CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.i

CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/OrderBook.cpp -o CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.s

CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o: src/cpp/core/Utils.cpp
CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/Utils.cpp

CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/Utils.cpp > CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.i

CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/core/Utils.cpp -o CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.s

CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o: src/cpp/data_feeds/MarketDataHandler.cpp
CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/data_feeds/MarketDataHandler.cpp

CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/data_feeds/MarketDataHandler.cpp > CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.i

CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/data_feeds/MarketDataHandler.cpp -o CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.s

CMakeFiles/Tests.dir/src/cpp/main.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/main.cpp.o: src/cpp/main.cpp
CMakeFiles/Tests.dir/src/cpp/main.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Tests.dir/src/cpp/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/main.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/main.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/main.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/main.cpp

CMakeFiles/Tests.dir/src/cpp/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/main.cpp > CMakeFiles/Tests.dir/src/cpp/main.cpp.i

CMakeFiles/Tests.dir/src/cpp/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/main.cpp -o CMakeFiles/Tests.dir/src/cpp/main.cpp.s

CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o: src/cpp/server/APIServer.cpp
CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/APIServer.cpp

CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/APIServer.cpp > CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.i

CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/APIServer.cpp -o CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.s

CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o: src/cpp/server/Server.cpp
CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/Server.cpp

CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/Server.cpp > CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.i

CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/Server.cpp -o CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.s

CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o: CMakeFiles/Tests.dir/flags.make
CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o: src/cpp/server/Session.cpp
CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o: CMakeFiles/Tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o -MF CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o.d -o CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o -c /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/Session.cpp

CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/Session.cpp > CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.i

CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulchan/Desktop/projects/Amtal0/src/cpp/server/Session.cpp -o CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.s

# Object files for target Tests
Tests_OBJECTS = \
"CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o" \
"CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o" \
"CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/main.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o" \
"CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o"

# External object files for target Tests
Tests_EXTERNAL_OBJECTS =

Tests: CMakeFiles/Tests.dir/tests/cpp/OrderBookTest.cpp.o
Tests: CMakeFiles/Tests.dir/tests/cpp/OrderTest.cpp.o
Tests: CMakeFiles/Tests.dir/tests/cpp/UtilsTest.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/core/FeedHandler.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/core/ObjectPool.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/core/Order.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/core/OrderBook.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/core/Utils.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/data_feeds/MarketDataHandler.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/main.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/server/APIServer.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/server/Server.cpp.o
Tests: CMakeFiles/Tests.dir/src/cpp/server/Session.cpp.o
Tests: CMakeFiles/Tests.dir/build.make
Tests: /opt/homebrew/lib/libgtest.a
Tests: /opt/homebrew/lib/libgtest_main.a
Tests: /opt/homebrew/lib/libgtest.a
Tests: CMakeFiles/Tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/paulchan/Desktop/projects/Amtal0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable Tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tests.dir/build: Tests
.PHONY : CMakeFiles/Tests.dir/build

CMakeFiles/Tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tests.dir/clean

CMakeFiles/Tests.dir/depend:
	cd /Users/paulchan/Desktop/projects/Amtal0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/paulchan/Desktop/projects/Amtal0 /Users/paulchan/Desktop/projects/Amtal0 /Users/paulchan/Desktop/projects/Amtal0 /Users/paulchan/Desktop/projects/Amtal0 /Users/paulchan/Desktop/projects/Amtal0/CMakeFiles/Tests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Tests.dir/depend

