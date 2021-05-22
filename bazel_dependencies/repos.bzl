load("@wpi_bazel_deps//third_party/gtest:repo.bzl", "third_party_gtest")
load("@local_ctre//:ctre.bzl", "third_party_ctre")
load("@local_rev//:rev.bzl", "third_party_rev")
load("@local_allwpilib//:repo.bzl", "third_party_allwpilib")

def sysid_external_repositories():
    third_party_gtest()
    third_party_allwpilib()

    third_party_ctre()
    third_party_rev()

#    third_party_gtest()
#    third_party_opencv()
#    third_party_imgui()
#    third_party_big_maven()
