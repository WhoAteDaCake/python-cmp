There are some naming standards which help when navigating the source code:

Use a Py prefix for public functions, never for static functions. The Py_ prefix is reserved for global service routines like Py_FatalError. Specific groups of routines (like specific object type APIs) use a longer prefix, such as PyString_ for string functions.

Public functions and variables use MixedCase with underscores, like this: PyObject_GetAttr, Py_BuildValue, PyExc_TypeError.

Occasionally an “internal” function has to be visible to the loader. We use the _Py prefix for this, for example, _PyObject_Dump.

Macros should have a MixedCase prefix and then use upper case, for example PyString_AS_STRING, Py_PRINT_RAW.