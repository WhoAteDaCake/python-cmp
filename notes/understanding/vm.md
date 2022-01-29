Python consists of 3 main stages:

* Initialisation
    * Python configures the required variables, loads built in modules, sets up the import system etc.
* Compilation
    * Parses the code, creates an AST, which is then gets compiled down to optimised bytecode, so it can be cached to speed up runtime.
* Interpretation

The VM is a stack based one

Code blocks: Pieces of code, which are executed within a single unit (module or a function body)

Function definitions: `PyFunctionObject` contains the data for each function definition, it contains
`func_code`, which has the code object.

GIL Global interpreter is used to synchronise between threads within a python program. Only the thread, which holds this lock owns the interpreter, which can access and modify shared python objects. 

to manage multiple threads, there needs to be a higher-level data structure than a thread state.

In fact, there are two of them: an interpreter state and the runtime state. The need for both may not seem immediately obvious. However, an execution of any program has at least one instance of each and there are good reasons for that.

