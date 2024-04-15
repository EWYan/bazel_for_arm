# project/BUILD.bazel

load("@aspect_bazel_lib//lib:transitions.bzl", "platform_transition_filegroup")
load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

platform(
    name = "arm_none_eabi",
    constraint_values = [
        "@platforms//cpu:arm",
        "@platforms//os:none",
    ],
)

cc_library(
    name = "arm_library",
    srcs = ["reset.S"],
    copts = [
        "-mcpu=cortex-r5",
        "-mthumb",
    ],
    target_compatible_with = [
        "@platforms//cpu:arm",
        "@platforms//os:none",
    ],
)


cc_binary(
    name = "arm_elf",
    srcs = ["main.c"],
    copts = [
        "-mcpu=cortex-r5",
        "-mthumb",
    ],
    linkopts = [
        "-T$(location linkerscript.ld)", 
        "-nostartfiles",
        "-Wl,--entry,_start",
    ],
    deps = [":arm_library", "linkerscript.ld"],
)

platform_transition_filegroup(
    name = "elf",
    srcs = [":arm_elf"],
    target_platform = ":arm_none_eabi",
)

genrule(
    name = "asm",
    srcs = [":elf"],
    outs = ["mock.asm"],
    cmd = "$(execpath @arm_none_eabi//:objdump) -d $< > $@",
    tools = ["@arm_none_eabi//:objdump"],
    visibility = ["//visibility:public"],
)
