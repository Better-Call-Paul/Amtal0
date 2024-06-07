# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-src"
  "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-build"
  "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-subbuild/databento-populate-prefix"
  "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-subbuild/databento-populate-prefix/tmp"
  "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-subbuild/databento-populate-prefix/src/databento-populate-stamp"
  "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-subbuild/databento-populate-prefix/src"
  "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-subbuild/databento-populate-prefix/src/databento-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-subbuild/databento-populate-prefix/src/databento-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/paulchan/Documents/GitHub/Amtal0/build/_deps/databento-subbuild/databento-populate-prefix/src/databento-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
