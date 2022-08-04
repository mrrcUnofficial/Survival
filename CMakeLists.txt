#----------------------------------------------------------------------------
# Setup the project
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(Survival)
include (GenerateExportHeader)

set(CMAKE_CXX_STANDARD 11)

find_package(GSL)


include_directories(${PROJECT_SOURCE_DIR}/include ${GSL_INCLUDE_DIRS})
file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cpp)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.h)


add_library(SurvivalDll ${sources} ${headers})
add_library(SurvivalLib ${sources} ${headers})
add_executable(Survival src/main.cpp ${sources} ${headers})
#target_link_libraries(Survival ${GSL_LIBRARIES})
target_link_libraries(Survival GSL::gsl GSL::gslcblas)
target_link_libraries(SurvivalDll ${GSL_LIBRARIES})


