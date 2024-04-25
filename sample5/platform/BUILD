constraint_value(
    name = "baremetal",
    constraint_setting = "@platforms//os",
    visibility = ["//visibility:public"],
)

platform(
    name = "aarch32_baremetal",
    constraint_values = [
        ":baremetal",
        "@platforms//cpu:aarch32",
    ],
)
