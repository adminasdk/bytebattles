SET(ASDK_COMMON_COMPILER_FLAGS
    -ffunction-sections
    -fdata-sections
)

SET(ASDK_COMMON_LINKER_FLAGS
    -Wl,--gc-sections
)

IF (CMAKE_BUILD_TYPE STREQUAL "DEBUG")
    MESSAGE("Build type: Debug")
    SET(ASDK_COMMON_COMPILER_FLAGS
        ${ASDK_COMMON_COMPILER_FLAGS} -O0 -g3
    )
ELSEIF((CMAKE_BUILD_TYPE STREQUAL "RELEASE"))
    MESSAGE("Build type: Release")
    SET(ASDK_COMMON_COMPILER_FLAGS
        ${ASDK_COMMON_COMPILER_FLAGS} -Os
    )
ENDIF()
