set(GTENGINE_INCLUDE_DIR  ${CMAKE_CURRENT_LIST_DIR}/GTEngine/include)
set(GTENGINE_INCLUDE_LINK ${CMAKE_CURRENT_LIST_DIR}/GTEngine/GTEngine)
add_custom_target( 
    gtengine-symlink
    COMMAND ${CMAKE_COMMAND} -E create_symlink
    ${GTENGINE_INCLUDE_DIR}
    ${GTENGINE_INCLUDE_LINK}
)

add_library(gtengine INTERFACE)
target_include_directories(
    gtengine
    INTERFACE ${GTENGINE_INCLUDE_LINK}
)
add_dependencies(gtengine gtengine-symlink)