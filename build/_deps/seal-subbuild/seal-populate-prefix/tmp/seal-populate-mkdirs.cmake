# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src"
  "/mnt/mohammad/cryptonite_bench/build/_deps/seal-build"
  "/mnt/mohammad/cryptonite_bench/build/_deps/seal-subbuild/seal-populate-prefix"
  "/mnt/mohammad/cryptonite_bench/build/_deps/seal-subbuild/seal-populate-prefix/tmp"
  "/mnt/mohammad/cryptonite_bench/build/_deps/seal-subbuild/seal-populate-prefix/src/seal-populate-stamp"
  "/mnt/mohammad/cryptonite_bench/build/_deps/seal-subbuild/seal-populate-prefix/src"
  "/mnt/mohammad/cryptonite_bench/build/_deps/seal-subbuild/seal-populate-prefix/src/seal-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/mnt/mohammad/cryptonite_bench/build/_deps/seal-subbuild/seal-populate-prefix/src/seal-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/mnt/mohammad/cryptonite_bench/build/_deps/seal-subbuild/seal-populate-prefix/src/seal-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
