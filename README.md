# bazel_for_arm

## sample1

download a pdf from web

```
cd sample1
bazel build //:main

```

## sample2

build a simple c program

```
cd sample2
bazel run //:hello

```

## sample3

build a simple c program 
add include path
add third-party lib

```
cd sample3
bazel run //:hello

```

## sample4
copy from https://github.com/hexdae/bazel-arm-none-eabi
simplied for learning basic steps on adapt a new custom toolchain

## sample5
custom local arm-none-eabi-<> toolchain 
