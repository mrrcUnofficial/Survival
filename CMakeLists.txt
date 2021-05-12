#----------------------------------------------------------------------------
# Setup the project
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(Survival)
include (GenerateExportHeader)

set(CMAKE_CXX_STANDARD 11)


include_directories(${PROJECT_SOURCE_DIR}/include)
file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cpp)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.h)
#file(GLOB site-modules ${PROJECT_SOURCE_DIR}/site-modules/*.py ${PROJECT_SOURCE_DIR}/site-modules/*.cc ${PROJECT_SOURCE_DIR}/site-modules/*.hh )
# todo: add unittests


add_library(Survival ${sources} ${headers})
add_library(shared_Survival ${sources} ${headers})
generate_export_header( shared_Survival )
#generate_export_header( shared_SurvivalPlugins )
GENERATE_EXPORT_HEADER( Survival
             BASE_NAME Survival
             EXPORT_MACRO_NAME Survival_EXPORT
             EXPORT_FILE_NAME Survival_Export.h
             STATIC_DEFINE NPLibrary_BUILT_AS_STATIC
)

add_executable(Survival src/main.cpp ${sources} ${headers})
target_link_libraries(Survival)


