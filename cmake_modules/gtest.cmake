include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.11.0
)

FetchContent_MakeAvailable(googletest)

if(CMAKE_COMPILER_IS_GNUCXX)
  set(COVERAGE_FLAGS "--coverage")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${COVERAGE_FLAGS}")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${COVERAGE_FLAGS}")
endif()

enable_testing()

add_subdirectory(${PROJECT_SOURCE_DIR}/src/test)
