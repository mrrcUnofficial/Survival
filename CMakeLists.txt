#----------------------------------------------------------------------------
# Setup the project
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(Survival)
include (GenerateExportHeader)

option(WITH_GEANT4_UIVIS "Build example with Geant4 UI and Vis drivers" ON)
if(WITH_GEANT4_UIVIS)
  find_package(Geant4 REQUIRED ui_all vis_all)
else()
  find_package(Geant4 REQUIRED)
endif()
set(Boost_DIR "C:/dev/bin/boost/lib/cmake/Boost-1.73.0/")

#set(Boost_USE_STATIC_LIBS ON)
#set(Boost_USE_STATIC_RUNTIME ON)
set(Boost_USE_STATIC_LIBS        ON)  # only find static libs
set(Boost_USE_DEBUG_LIBS         OFF) # ignore debug libs and
set(Boost_USE_RELEASE_LIBS       ON)  # only find release libs
set(Boost_USE_MULTITHREADED      ON)
set(Boost_USE_STATIC_RUNTIME    OFF)

FIND_PACKAGE( Boost 1.61 REQUIRED COMPONENTS filesystem serialization system iostreams)
#find_package(ROOT)
set(CMAKE_CXX_STANDARD 11)

#find_package(ROOT)


include(${Geant4_USE_FILE})


include_directories(${PROJECT_SOURCE_DIR}/include 
                    ${Geant4_INCLUDE_DIR}
                    ${Boost_INCLUDE_DIR}
)
file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cpp)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.h)
#file(GLOB site-modules ${PROJECT_SOURCE_DIR}/site-modules/*.py ${PROJECT_SOURCE_DIR}/site-modules/*.cc ${PROJECT_SOURCE_DIR}/site-modules/*.hh )
# todo: add unittests

message(STATUS ${Boost_LIBRARIES})

#todo: add CMake test suite for providing
#cl -DUSE_NPLIBRARY
#cl -DNPLIBRARY_MIMICRY_G4PY

#add_library(SurvivalPlugins ${site-modules})
#add_library(shared_SurvivalPlugins ${site-modules})
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

add_executable(SurvivalWin Survival.cpp ${sources} ${headers})
target_link_libraries(SurvivalWin
 ${Geant4_LIBRARIES} 
 ${Boost_LIBRARIES}
# protobuf::libprotobuf
# ${MongoDB_LIBRARIES}
# ${NPPLAN_LINK_DIR}
)

#add_executable(DirectTest DirectTest.cc ${sources} ${headers})
#target_link_libraries(DirectTest ${Geant4_LIBRARIES} ${Boost_LIBRARIES})
#link_directories (${NPPLAN_LINK_DIR})


