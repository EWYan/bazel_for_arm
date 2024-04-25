baremetal_AARCH32_CONSTRAINTS = [
    "//platform:baremetal",
    "@platforms//cpu:aarch32",
]

cc_binary(
    name = "demo",
    srcs = [
        "cpu_main.c",
        "boot.S",
    ],
    additional_linker_inputs = [
        "linkscript.ld",
    ],
    linkopts = ["-Wl,-T $(location :linkscript.ld)"],
    target_compatible_with = baremetal_AARCH32_CONSTRAINTS,
)

genrule(
    name = "asm",
    srcs = [":demo"],
    outs = ["demo.asm"],
    cmd = "$(execpath //toolchain:aarch32_baremetal_toolchain/objdump) -d $< > $@",
    tools = ["//toolchain:aarch32_baremetal_toolchain/objdump"],
    visibility = ["//visibility:public"],
)



