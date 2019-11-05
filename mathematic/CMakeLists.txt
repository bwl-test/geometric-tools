
file(GLOB_RECURSE SRCS RELATIVE ${CMAKE_CURRENT_LIST_DIR} *.cpp *.h *.hpp)

add_executable(mathematic ${SRCS})

target_link_libraries(mathematic PRIVATE Catch2 gtengine)