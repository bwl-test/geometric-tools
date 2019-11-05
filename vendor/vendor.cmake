execute_process(
    COMMAND git submodule update --init
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/vendor
)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/Catch2)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/GTEngine)
