# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/gabrielj/esptest/esp-idf/components/bootloader/subproject"
  "/home/gabrielj/pmec_hw/uros_espidf_env/build/bootloader"
  "/home/gabrielj/pmec_hw/uros_espidf_env/build/bootloader-prefix"
  "/home/gabrielj/pmec_hw/uros_espidf_env/build/bootloader-prefix/tmp"
  "/home/gabrielj/pmec_hw/uros_espidf_env/build/bootloader-prefix/src/bootloader-stamp"
  "/home/gabrielj/pmec_hw/uros_espidf_env/build/bootloader-prefix/src"
  "/home/gabrielj/pmec_hw/uros_espidf_env/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/gabrielj/pmec_hw/uros_espidf_env/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/gabrielj/pmec_hw/uros_espidf_env/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
