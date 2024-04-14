load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_library(
    name = "add",
    srcs = glob(["third_party/lib/add.c"]),
    hdrs = glob(["third_party/include/add.h"]),
    includes = ["third_party/include"],
)

# Define a cc_library target with the include path
cc_library(
    name = "include_path",
    hdrs = glob(["inc/**/*.h", "src/**/*.h"]),  # Assuming your headers are located in the "inc" directory
    includes = ["inc", "src"],
)

# Define the cc_binary target and specify the cc_library target as a dependency
cc_binary(
    name = "hello",
    srcs = glob(["src/**/*.c"]),
    deps = [":include_path", ":add"],  # Specify the dependency on the cc_library target
)
