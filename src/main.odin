package main

import "core:os"
import "core:runtime"
import "core:slice"

import "packages:python"



main :: proc() {
    args := os.args
    argc: i32 = auto_cast len(runtime.args__)
    argv := slice.first_ptr(runtime.args__)
    python.Py_BytesMain(argc, argv)
}