#
#load("@wpi_bazel_rules//maven_utils:cpp.bzl", "create_wpi_cpp_maven_deps")
#load("@allwpilib//bazel_scripts/third_party/edu_wpi_first_thirdparty_imgui:repo.bzl", "third_party_imgui")
#load("@allwpilib//bazel_scripts/third_party/edu_wpi_first_thirdparty_opencv:repo.bzl", "third_party_opencv")
#
#BUILD_FROM_SOURCE = True
#
#def third_party_allwpilib():
#    if BUILD_FROM_SOURCE:
#        third_party_imgui()
#        third_party_opencv()
#    else:
#        create_wpi_cpp_maven_deps()
#
