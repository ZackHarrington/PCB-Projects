# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/zwhar/esp/esp-idf/components/bootloader/subproject"
  "C:/git/PCB-Projects/Billy-Bass-Board/Programming-Files/build/bootloader"
  "C:/git/PCB-Projects/Billy-Bass-Board/Programming-Files/build/bootloader-prefix"
  "C:/git/PCB-Projects/Billy-Bass-Board/Programming-Files/build/bootloader-prefix/tmp"
  "C:/git/PCB-Projects/Billy-Bass-Board/Programming-Files/build/bootloader-prefix/src/bootloader-stamp"
  "C:/git/PCB-Projects/Billy-Bass-Board/Programming-Files/build/bootloader-prefix/src"
  "C:/git/PCB-Projects/Billy-Bass-Board/Programming-Files/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/git/PCB-Projects/Billy-Bass-Board/Programming-Files/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/git/PCB-Projects/Billy-Bass-Board/Programming-Files/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
