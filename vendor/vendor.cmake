execute_process(
    COMMAND git submodule update --init
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/vendor
)

include(${CMAKE_CURRENT_LIST_DIR}/catch2.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/gtengine.cmake)