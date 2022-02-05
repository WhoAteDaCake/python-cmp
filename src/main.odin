package main

import "core:os"
import "core:runtime"
import "core:slice"
import "core:c"

import "packages:python"


// static PyStatus
// pymain_init(const _PyArgv *args)
// {
//     PyStatus status;

//     status = _PyRuntime_Initialize();
//     if (_PyStatus_EXCEPTION(status)) {
//         return status;
//     }

//     PyPreConfig preconfig;
//     PyPreConfig_InitPythonConfig(&preconfig);

//     status = _Py_PreInitializeFromPyArgv(&preconfig, args);
//     if (_PyStatus_EXCEPTION(status)) {
//         return status;
//     }

//     PyConfig config;
//     PyConfig_InitPythonConfig(&config);

//     /* pass NULL as the config: config is read from command line arguments,
//        environment variables, configuration files */
//     if (args->use_bytes_argv) {
//         status = PyConfig_SetBytesArgv(&config, args->argc, args->bytes_argv);
//     }
//     else {
//         status = PyConfig_SetArgv(&config, args->argc, args->wchar_argv);
//     }
//     if (_PyStatus_EXCEPTION(status)) {
//         goto done;
//     }

//     status = Py_InitializeFromConfig(&config);
//     if (_PyStatus_EXCEPTION(status)) {
//         goto done;
//     }
//     status = _PyStatus_OK();

// done:
//     PyConfig_Clear(&config);
//     return status;
// }

pymain_init :: proc(args: ^python._PyArgv) -> python.PyStatus {
    status := python.PyStatus{}
    status = python._PyRuntime_Initialize();
    
    return status
}

// static int
// pymain_main(_PyArgv *args)
// {
//     PyStatus status = pymain_init(args);
//     if (_PyStatus_IS_EXIT(status)) {
//         pymain_free();
//         return status.exitcode;
//     }
//     if (_PyStatus_EXCEPTION(status)) {
//         pymain_exit_error(status);
//     }

//     return Py_RunMain();
// }

pymain_main :: proc(args: ^python._PyArgv) -> int {
    status := pymain_init(args)
    return 0
}

Py_BytesMain :: proc(argc: c.ssize_t, argv: ^cstring) -> int {
    args := python._PyArgv{
        argc = argc,
        use_bytes_argv = auto_cast 1,
        bytes_argv = argv,
    }
    return pymain_main(&args)
}

main :: proc() {
    args := os.args
    argc := len(runtime.args__)
    argv := slice.first_ptr(runtime.args__)
    Py_BytesMain(argc, argv)
}