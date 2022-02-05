package main

import "core:c"

import "packages:python"

// int
// Py_BytesMain(int argc, char **argv)
// {
//     _PyArgv args = {
//         .argc = argc,
//         .use_bytes_argv = 1,
//         .bytes_argv = argv,
//         .wchar_argv = NULL};
//     return pymain_main(&args);
// }

Py_BytesMain :: proc(argc: c.int, argv: ^cstring) -> int {
    
    return 0
}