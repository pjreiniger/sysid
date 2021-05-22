workspace(name = "wpilib")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JVM_EXTERNAL_TAG = "3.3"

RULES_JVM_EXTERNAL_SHA = "d85951a92c0908c80bd8551002d66cb23c3434409c814179c0ff026b53544dab"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

local_repository(
    name = "wpi_bazel_deps",
    path = "C:/Users/PJ/Documents/GitHub/wpilib/original/bazel_rules/wpi-bazel-deps-rules",
)

local_repository(
    name = "wpi_bazel_rules",
    path = "C:/Users/PJ/Documents/GitHub/wpilib/original/bazel_rules/wpi-bazel-rules",
)

local_repository(
    name = "ctre_bazel_rules",
    path = "C:/Users/PJ/Documents/GitHub/wpilib/original/bazel_rules/ctre-bazel-rules",
)

local_repository(
    name = "rev_bazel_rules",
    path = "C:/Users/PJ/Documents/GitHub/wpilib/original/bazel_rules/rev-bazel-rules",
)

local_repository(
    name = "allwpilib",
    path = "C:/Users/PJ/Documents/GitHub/wpilib/original/allwpilib",
)

http_archive(
    name = "rules_python",
    sha256 = "b6d46438523a3ec0f3cead544190ee13223a52f6a6765a29eae7b7cc24cc83a0",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.1.0/rules_python-0.1.0.tar.gz",
)

load("//bazel_dependencies:load_external.bzl", "load_external_repositories")
load_external_repositories()

load("//bazel_dependencies:repos.bzl", "sysid_external_repositories")

sysid_external_repositories()
