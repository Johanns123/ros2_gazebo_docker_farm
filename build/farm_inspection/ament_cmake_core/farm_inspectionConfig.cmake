# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_farm_inspection_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED farm_inspection_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(farm_inspection_FOUND FALSE)
  elseif(NOT farm_inspection_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(farm_inspection_FOUND FALSE)
  endif()
  return()
endif()
set(_farm_inspection_CONFIG_INCLUDED TRUE)

# output package information
if(NOT farm_inspection_FIND_QUIETLY)
  message(STATUS "Found farm_inspection: 0.0.0 (${farm_inspection_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'farm_inspection' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${farm_inspection_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(farm_inspection_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${farm_inspection_DIR}/${_extra}")
endforeach()
