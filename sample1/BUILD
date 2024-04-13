load("@rules_python//python:defs.bzl", "py_binary")

filegroup(
    name = "the_bitter_lesson",
    srcs = ["@the_bitter_lesson//file"], # This references the downloaded PDF file
)

py_binary(
  name = "main",
  srcs = ["main.py"],
  data = [":the_bitter_lesson"], 
)
