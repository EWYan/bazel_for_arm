"""arm-none-eabi toolchiain archives"""

ARM_NONE_EABI = {
    "13.2.1": [
        {
            "name": "arm_none_eabi_linux_x86_64",
            "sha256": "6cd1bbc1d9ae57312bcd169ae283153a9572bd6a8e4eeae2fedfbc33b115fdbb",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-eabi",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz?rev=e434b9ea4afc4ed7998329566b764309&hash=688C370BF08399033CA9DE3C1CC8CF8E31D8C441",
            "exec_compatible_with": [
                "@platforms//os:linux",
                "@platforms//cpu:x86_64",
            ],
        },
        {
            "name": "arm_none_eabi_linux_aarch64",
            "sha256": "8fd8b4a0a8d44ab2e195ccfbeef42223dfb3ede29d80f14dcf2183c34b8d199a",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-aarch64-arm-none-eabi",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-aarch64-arm-none-eabi.tar.xz?rev=17baf091942042768d55c9a304610954&hash=7F32B9E3ADFAFC4F8F74C30EBBBFECEB1AC96B60",
            "exec_compatible_with": [
                "@platforms//os:linux",
                "@platforms//cpu:aarch64",
            ],
        },
        {
            "name": "arm_none_eabi_windows_x86_64",
            "sha256": "51d933f00578aa28016c5e3c84f94403274ea7915539f8e56c13e2196437d18f",
            "strip_prefix": "arm-gnu-toolchain-13.2.Rel1-mingw-w64-i686-arm-none-eabi",
            "url": "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-mingw-w64-i686-arm-none-eabi.zip?rev=93fda279901c4c0299e03e5c4899b51f&hash=A3C5FF788BE90810E121091C873E3532336C8D46",
            "exec_compatible_with": [
                "@platforms//os:windows",
                "@platforms//cpu:aarch64",
            ],
        },
    ],
}
