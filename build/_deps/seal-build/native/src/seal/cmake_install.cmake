# Install script for directory: /mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SEAL-3.6/seal" TYPE FILE FILES
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/batchencoder.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/ciphertext.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/ckks.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/modulus.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/context.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/decryptor.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/dynarray.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/encryptionparams.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/encryptor.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/evaluator.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/galoiskeys.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/keygenerator.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/kswitchkeys.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/memorymanager.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/plaintext.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/publickey.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/randomgen.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/randomtostd.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/relinkeys.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/seal.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/secretkey.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/serializable.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/serialization.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/valcheck.h"
    "/mnt/mohammad/cryptonite_bench/build/_deps/seal-src/native/src/seal/version.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/mohammad/cryptonite_bench/build/_deps/seal-build/native/src/seal/util/cmake_install.cmake")

endif()

