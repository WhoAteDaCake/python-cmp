# 
[Reference](https://realpython.com/cpython-source-code-guide/#part-2-the-python-interpreter-process)

Main code enty is in `main.c::pymain_main`, then the order is `main.c::pymain_init` ->`main.c::pymain_run_python`.

Python then locks the interpreter and gets the config. 

In there multiple variations that the process can run in:

* Module
* Repl 
* Stdin
* Command

If `config.isolated` is not set, `_PyPathConfig_ComputeSysPath0` is called.

The part we are interested is `main.c::pymain_run_file`, since that's where 