# Install script for directory: /home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/linux

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Profile")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  
  file(REMOVE_RECURSE "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/")
  
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/flutter_web" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/flutter_web")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/flutter_web"
         RPATH "$ORIGIN/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/flutter_web")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle" TYPE EXECUTABLE FILES "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/intermediates_do_not_run/flutter_web")
  if(EXISTS "$ENV{DESTDIR}/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/flutter_web" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/flutter_web")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/flutter_web"
         OLD_RPATH "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/plugins/url_launcher_linux:/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/linux/flutter/ephemeral:"
         NEW_RPATH "$ORIGIN/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/snap/flutter/current/usr/bin/strip" "$ENV{DESTDIR}/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/flutter_web")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/data/icudtl.dat")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/data" TYPE FILE FILES "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/linux/flutter/ephemeral/icudtl.dat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/lib/libflutter_linux_gtk.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/lib" TYPE FILE FILES "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/linux/flutter/ephemeral/libflutter_linux_gtk.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/lib/liburl_launcher_linux_plugin.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/lib" TYPE FILE FILES "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/plugins/url_launcher_linux/liburl_launcher_linux_plugin.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  
  file(REMOVE_RECURSE "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/data/flutter_assets")
  
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/data/flutter_assets")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/data" TYPE DIRECTORY FILES "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build//flutter_assets")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/lib/libapp.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/bundle/lib" TYPE FILE FILES "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/lib/libapp.so")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/flutter/cmake_install.cmake")
  include("/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/plugins/url_launcher_linux/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/lucas/Workspace/Projeto Daki/projeto-daki-flutter/build/linux/x64/profile/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
