def cc_binary_with_map(name, srcs, additional_linker_inputs, **kwargs):
    native.cc_binary(
        name = name,
        srcs = srcs,
        additional_linker_inputs = additional_linker_inputs,
        linkopts = [
            "-Wl,-T $(location :linkscript.ld)",
            "-Wl,-Map=$(BINDIR)/" + name + ".map",
        ],
        **kwargs
    )