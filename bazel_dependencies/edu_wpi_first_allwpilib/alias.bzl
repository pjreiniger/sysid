#
#load("@local_allwpilib//:repo.bzl", "BUILD_FROM_SOURCE")
#load("@wpi_bazel_rules//rules:wpilib_repo.bzl", "make_cpp_alias")
#load("@wpi_bazel_rules//rules:cc.bzl",  "wpilib_cc_library")
#
#def __create_build_from_source_alias():
#
#    native.alias(
#        name = "wpimath-cpp",
#        actual = "@allwpilib//wpimath:wpimath_staticxx",
#    )
#
#    native.alias(
#        name = "wpiutil-cpp",
#        actual = "@allwpilib//wpiutil:wpiutil_staticxx",
#    )
#
#    native.alias(
#        name = "ntcore-cpp",
#        actual = "@allwpilib//ntcore:ntcore_staticxx",
#    )
#    native.alias(
#        name = "wpigui-cpp",
#        actual = "@allwpilib//wpigui:wpigui",
#    )
#    native.alias(
#        name = "wpilibc-cpp",
#        actual = "@allwpilib//wpilibc:wpilibc-cpp",
#    )
#    native.alias(
#        name = "libglass",
#        actual = "@allwpilib//glass:glass",
#    )
#    native.alias(
#        name = "libglassnt",
#        actual = "@allwpilib//glass:glassnt",
#    )
#    native.alias(
#        name = "imgui",
#        actual = "@allwpilib//bazel_scripts/third_party/edu_wpi_first_thirdparty_imgui:imgui",
#    )
#
##    make_cpp_alias("wpimath-cpp")
##    make_cpp_alias("wpiutil-cpp")
##    make_cpp_alias("ntcore-cpp")
##    make_cpp_alias("wpigui-cpp")
##    make_cpp_alias("libglass")
##    make_cpp_alias("libglassnt")
##    make_cpp_alias("imgui")
#
#def __create_build_from_libraries_alias():
#    libraries = []
#    libraries.append("wpimath-cpp")
#    libraries.append("wpiutil-cpp")
#    libraries.append("ntcore-cpp")
#    libraries.append("wpigui-cpp")
#    libraries.append("libglass")
#    libraries.append("libglassnt")
#    libraries.append("imgui")
#
#    for lib in libraries:
#        make_cpp_alias(lib)
#
#        alias(
#            name = lib,
#            actual = ":" + lib + "-shared-libs"
##            raw_deps = [
##                "@" + lib + "-headers//:headers",
##                ":" + lib + "-shared-libs",
##            ],
##            visibility = ["//visibility:public"],
#        )
#
#
#
#def create_alias():
#
#    if BUILD_FROM_SOURCE:
#        __create_build_from_source_alias()
#    else:
#        __create_build_from_libraries_alias()
#
#
#
