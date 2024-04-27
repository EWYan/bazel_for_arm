# load test macro
load("//toolchain:test_macro.bzl", "cc_binary_with_map")


baremetal_AARCH32_CONSTRAINTS = [
    "//platform:baremetal",
    "@platforms//cpu:aarch32",
]

cc_binary_with_map(
    name = "demo_map",
    srcs = [
        "cpu_main.c",
        "boot.S",
    ],
    additional_linker_inputs = [
        "linkscript.ld",
    ],
    target_compatible_with = baremetal_AARCH32_CONSTRAINTS,
)

cc_binary(
    name = "demo",
    srcs = [
        "cpu_main.c",
        "boot.S",
    ],
    additional_linker_inputs = [
        "linkscript.ld",
    ],
        linkopts = [
            "-Wl,-T $(location :linkscript.ld)",
        ],
    target_compatible_with = baremetal_AARCH32_CONSTRAINTS,
)

genrule(
  name = "asm",
  srcs = [":test_name"],
  outs = ["test_name.asm"],
  cmd = "$(location :linkscript.ld) -d $< > $@",
)

# genrule(
#     name = "asm",
#     srcs = [":demo"],
#     outs = ["demo.asm"],
#     cmd = "$(execpath //toolchain:aarch32_baremetal_toolchain/objdump) -d $< > $@",
#     tools = ["//toolchain:aarch32_baremetal_toolchain/objdump"],
#     visibility = ["//visibility:public"],
# )



