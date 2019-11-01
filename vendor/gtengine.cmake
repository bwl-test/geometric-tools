ExternalProject_Add(
    gtengine-download
    URL https://www.geometrictools.com/Downloads/GeometricToolsEngine3p28.zip
    SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
)

ADD_CUSTOM_TARGET( 
    gtengine-symlink 
    ALL  
    COMMAND ${CMAKE_COMMAND} -E create_symlink
    ${CMAKE_CURRENT_LIST_DIR}/GeometricTools/GTEngine/include
    ${CMAKE_CURRENT_LIST_DIR}/GeometricTools/GTEngine/GTEngine
)
add_dependencies(gtengine-symlink gtengine-download)

add_library(gtengine INTERFACE)
target_include_directories(
    gtengine
    INTERFACE vendor/GeometricTools/GTEngine
)
add_dependencies(gtengine gtengine-symlink)