# Install script for directory: /home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_core.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_core-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_core-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_core-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_core-2.1.so.7.0.0"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_core-2.1.so.7"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_core-2.1.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_core-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_core-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_core-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_core.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/pkgconfig/libevent_core.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/pkgconfig" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/libevent_core.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_extra.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_extra-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_extra-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_extra-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_extra-2.1.so.7.0.0"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_extra-2.1.so.7"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_extra-2.1.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_extra-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_extra-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_extra-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_extra.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/pkgconfig/libevent_extra.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/pkgconfig" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/libevent_extra.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_openssl.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_openssl-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_openssl-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_openssl-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_openssl-2.1.so.7.0.0"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_openssl-2.1.so.7"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_openssl-2.1.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_openssl-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_openssl-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_openssl-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_openssl.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/pkgconfig/libevent_openssl.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/pkgconfig" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/libevent_openssl.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_pthreads.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_pthreads-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_pthreads-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_pthreads-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_pthreads-2.1.so.7.0.0"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_pthreads-2.1.so.7"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_pthreads-2.1.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_pthreads-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_pthreads-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent_pthreads-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent_pthreads.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/pkgconfig/libevent_pthreads.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/pkgconfig" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/libevent_pthreads.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent-2.1.so.7.0.0"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent-2.1.so.7"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent-2.1.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent-2.1.so.7.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent-2.1.so.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libevent-2.1.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/event2" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/buffer_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/dns_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/event_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/http_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/keyvalq_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/listener.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/rpc_struct.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/tag_compat.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/thread.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/util.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/visibility.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/include/event2/event-config.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event2/bufferevent_ssl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/lib/libevent.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/pkgconfig/libevent.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/pkgconfig" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/libevent.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/evdns.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/evrpc.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/event.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/evhttp.h"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/include/evutil.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/cmake/libevent/LibeventConfig.cmake;/usr/local/lib/cmake/libevent/LibeventConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/cmake/libevent" TYPE FILE FILES
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build//CMakeFiles/LibeventConfig.cmake"
    "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/LibeventConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libevent/LibeventTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libevent/LibeventTargets.cmake"
         "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/CMakeFiles/Export/lib/cmake/libevent/LibeventTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libevent/LibeventTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libevent/LibeventTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libevent" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/CMakeFiles/Export/lib/cmake/libevent/LibeventTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libevent" TYPE FILE FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/CMakeFiles/Export/lib/cmake/libevent/LibeventTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xruntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/event_rpcgen.py")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/leo/mycode/RunRasPi/3rdparty/libevent-2.1.11-stable/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
