cmake_minimum_required(VERSION 3.2)
project(test-llvm-plugins)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
message("LLVM STATUS:
    Definitions ${LLVM_DEFINITIONS}
    Includes ${LLVM_INCLUDE_DIRS}
    Libraries ${LLVM_LIBRARY_DIRS}
    Targets ${LLVM_TARGETS_TO_BUILD}"
)

include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})

set(SOURCES src/testPlugin.cpp)

add_library(TestPlugin SHARED ${SOURCES})

find_package(LLVM 18.1.8 CONFIG REQUIRED)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
message("LLVM STATUS:
    Definitions ${LLVM_DEFINITIONS}
    Includes ${LLVM_INCLUDE_DIRS}
    Libraries ${LLVM_LIBRARY_DIRS}
    Targets ${LLVM_TARGETS_TO_BUILD}"
)

include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})

target_link_libraries(TestPlugin LLVM)

set_target_properties(TestPlugin PROPERTIES
    VERSION 1.0
)
