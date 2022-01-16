Python consists of 3 main stages:

* Initialisation
    * Python configures the required variables, loads built in modules, sets up the import system etc.
* Compilation
    * Parses the code, creates an AST, which is then gets compiled down to optimised bytecode, so it can be cached to speed up runtime.
* Interpretation

The VM is a stack based one

Code blocks: Pieces of code, which are executed within a single unit (module or a function body)