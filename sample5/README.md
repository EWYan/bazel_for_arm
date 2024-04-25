# Bazel C/C++ cross-compile example: aarch32 baremetal

## Building

To build, run the following command:

```
bazel build -s --platforms=//platform:aarch32_baremetal //demo:demo
```

The `-s` flag ensures that you see the individual steps of the build (you may need to `bazel clean` or `bazel clean --expunge`first if there is some existing cache, so you can see the whole build from scratch).


---

**This example was referenced from the repo http://popovicu.com/posts/cross-compiling-c-with-bazel**

