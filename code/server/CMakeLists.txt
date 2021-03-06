cmake_minimum_required(VERSION 3.5)
project(ShoesRecognizationService CXX)
include(CheckIncludeFileCXX)

check_include_file_cxx(any HAS_ANY)
check_include_file_cxx(string_view HAS_STRING_VIEW)
check_include_file_cxx(coroutine HAS_COROUTINE)
if (HAS_ANY AND HAS_STRING_VIEW AND HAS_COROUTINE)
    set(CMAKE_CXX_STANDARD 20)
elseif (HAS_ANY AND HAS_STRING_VIEW)
    set(CMAKE_CXX_STANDARD 17)
else ()
    set(CMAKE_CXX_STANDARD 14)
endif ()

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# 设置一波源文件 这个地方头文件应该也可以加 类似vs的添加源文件
set(SOURCE_FILES main.cpp shoesRecognization_Intetface_shoesrecognization.h shoesRecognization_Intetface_shoesrecognization.cc)
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

find_package(Drogon CONFIG REQUIRED)
set(OpenCV_DIR ~/wyz/opencv-3.4.1/build)
find_package(OpenCV REQUIRED)

set(Torch_DIR ~/wyz/libtorch/share/cmake/Torch)
find_package(Torch REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )

#${OpenCV_LIBS} ${TORCH_LIBRARIES}
target_link_libraries(${PROJECT_NAME} PRIVATE Drogon::Drogon ${OpenCV_LIBS}  ${TORCH_LIBRARIES})

# ##############################################################################

if (CMAKE_CXX_STANDARD LESS 17)
    # With C++14, use boost to support any and string_view
    message(STATUS "use c++14")
    find_package(Boost 1.61.0 REQUIRED)
    target_include_directories(${PROJECT_NAME} PRIVATE ${Boost_INCLUDE_DIRS})
elseif (CMAKE_CXX_STANDARD LESS 20)
    message(STATUS "use c++17")
else ()
    message(STATUS "use c++20")
endif ()

aux_source_directory(controllers CTL_SRC)
aux_source_directory(filters FILTER_SRC)
aux_source_directory(plugins PLUGIN_SRC)
aux_source_directory(models MODEL_SRC)

drogon_create_views(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/views
        ${CMAKE_CURRENT_BINARY_DIR})
target_include_directories(${PROJECT_NAME}
        PRIVATE ..
        ${CMAKE_CURRENT_SOURCE_DIR}/models)
target_sources(${PROJECT_NAME}
        PRIVATE
        ${SRC_DIR}
        ${CTL_SRC}
        ${FILTER_SRC}
        ${PLUGIN_SRC}
        ${MODEL_SRC})
# ##############################################################################
