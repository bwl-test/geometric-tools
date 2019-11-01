set(GTENGINE_INCLUDE_DIR  ${CMAKE_CURRENT_LIST_DIR}/GTEngine/include)
set(GTENGINE_INCLUDE_LINK ${CMAKE_CURRENT_LIST_DIR}/GTEngine)

if(NOT EXISTS ${GTENGINE_INCLUDE_LINK})
    file(
        CREATE_LINK 
        ${GTENGINE_INCLUDE_DIR}
        ${GTENGINE_INCLUDE_LINK}
        SYMBOLIC
    )
endif()

add_library(gtengine INTERFACE)
target_include_directories(
    gtengine
    INTERFACE ${CMAKE_CURRENT_LIST_DIR}/GTEngine
    INTERFACE ${CMAKE_CURRENT_LIST_DIR}/GTEngine/include
)
add_dependencies(gtengine gtengine-symlink)