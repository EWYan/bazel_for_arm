load(":aarch32_baremetal_toolchain.bzl", "aarch32_baremetal_toolchain_config")

filegroup(name = "empty")

aarch32_baremetal_toolchain_config(
    name = "aarch32_baremetal_config"
);

cc_toolchain(
    name = "aarch32_baremetal_toolchain",
    toolchain_identifier = "local",
    toolchain_config = ":aarch32_baremetal_config",
    all_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = False,
)

toolchain(
    name = "aarch32_baremetal_toolchain_win_x86_64",
    exec_compatible_with = [
        "@platforms//os:windows",
        "@platforms//cpu:x86_64",
    ],
    target_compatible_with = [
        "//platform:baremetal",
        "@platforms//cpu:aarch32",
    ],
    toolchain = ":aarch32_baremetal_toolchain",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
