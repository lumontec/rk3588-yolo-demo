cmake_minimum_required(VERSION 3.22)
project(yolov8)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE Release) # None, Debug, Release, RelWithDebInfo, MinSizeRel
#SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -Wno-unused-parameter -O0 -g -Wall")
#SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS}  -Wno-unused-parameter -O0 -g -Wall")
SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -Wno-unused-parameter -O3 -g -Wall")
SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS}  -Wno-unused-parameter -O3 -g -Wall")

include_directories(include)

add_subdirectory(utils)

find_package(OpenCV 4.11 REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
find_package(kaylordut REQUIRED)
find_package(bytetrack REQUIRED)


add_executable(videofile_demo videofile_demo.cpp)
target_link_libraries(videofile_demo ${kaylordut_LIBS} ${OpenCV_LIBS} yolov8-kaylordut ${bytetrack_LIBS})

add_executable(camera_demo camera_demo.cpp)
target_link_libraries(camera_demo ${kaylordut_LIBS} ${OpenCV_LIBS} yolov8-kaylordut ${bytetrack_LIBS})

add_executable(imagefile_demo imagefile_demo.cpp)
target_link_libraries(imagefile_demo ${kaylordut_LIBS} ${OpenCV_LIBS} yolov8-kaylordut ${bytetrack_LIBS})
