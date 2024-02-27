# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_bt_plugin_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_bt_plugin SHARED
  "flutter_bt_plugin.c"
)

set_target_properties(flutter_bt_plugin PROPERTIES
  PUBLIC_HEADER flutter_bt_plugin.h
  OUTPUT_NAME "flutter_bt_plugin"
)

target_compile_definitions(flutter_bt_plugin PUBLIC DART_SHARED_LIB)
