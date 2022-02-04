package main

import _c "core:c"

PyObject :: _object;

_object :: struct {
    ob_refcnt : _c.ssize_t,
    ob_type : ^_typeobject,
};

_typeobject :: int


destructor :: #type proc(unamed0 : ^PyObject);

main :: proc() {
    
}