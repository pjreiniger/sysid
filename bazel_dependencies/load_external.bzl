
load("@wpi_bazel_deps//allwpilib:load_allwpilib.bzl", "load_allwpilib")
load("@ctre_bazel_rules//:load_ctre.bzl", "load_ctre")
load("@rev_bazel_rules//:load_rev.bzl", "load_rev")


def load_external_repositories():
    load_allwpilib(build_from_source = False, year = 2021)
    load_ctre(version = "5.19.4")
    load_rev(version = "1.5.4")
