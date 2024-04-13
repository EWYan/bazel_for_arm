load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

# Define a cc_library target with the include path
cc_library(
    name = "include_path",
    hdrs = glob(["inc/**/*.h"]),  # Assuming your headers are located in the "inc" directory
    includes = ["inc"],
)

# Define the cc_binary target and specify the cc_library target as a dependency
cc_binary(
    name = "hello",
    srcs = ["src/main.c"],
    deps = [":include_path"],  # Specify the dependency on the cc_library target
)
