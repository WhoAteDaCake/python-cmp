package python

foreign import "system:python"

import _c "core:c"


Py_uintptr_t :: _c.uintptr_t;
Py_intptr_t :: _c.intptr_t;
Py_ssize_t :: _c.ssize_t;
Py_hash_t :: _c.ssize_t;
Py_uhash_t :: _c.size_t;
Py_ssize_clean_t :: _c.int;

unaryfunc :: #type proc(unamed0 : ^PyObject) -> ^PyObject;
binaryfunc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject;
ternaryfunc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject;
inquiry :: #type proc(unamed0 : ^PyObject) -> _c.int;
lenfunc :: #type proc(unamed0 : ^PyObject) -> _c.ssize_t;
ssizeargfunc :: #type proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> ^PyObject;
ssizessizeargfunc :: #type proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : _c.ssize_t) -> ^PyObject;
ssizeobjargproc :: #type proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : ^PyObject) -> _c.int;
ssizessizeobjargproc :: #type proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : _c.ssize_t, unamed3 : ^PyObject) -> _c.int;
objobjargproc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> _c.int;
objobjproc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int;
visitproc :: #type proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int;
traverseproc :: #type proc(unamed0 : ^PyObject, unamed1 : visitproc, unamed2 : rawptr) -> _c.int;
freefunc :: #type proc(unamed0 : rawptr);
destructor :: #type proc(unamed0 : ^_object);
getattrfunc :: #type proc(unamed0 : ^_object, unamed1 : cstring) -> ^_object;
getattrofunc :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject;
setattrfunc :: proc(unamed0 : ^PyObject, unamed1 : cstring, unamed2 : ^PyObject) -> _c.int;
setattrofunc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> _c.int;
reprfunc :: #type proc(unamed0 : ^PyObject) -> ^PyObject;
hashfunc :: #type proc(unamed0 : ^PyObject) -> _c.ssize_t;
richcmpfunc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : _c.int) -> ^PyObject;
getiterfunc :: #type proc(unamed0 : ^PyObject) -> ^PyObject;
iternextfunc :: #type proc(unamed0 : ^PyObject) -> ^PyObject;
descrgetfunc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject;
descrsetfunc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> _c.int;
initproc :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> _c.int;
newfunc :: #type proc(unamed0 : ^_typeobject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject;
allocfunc :: #type proc(unamed0 : ^_typeobject, unamed1 : _c.ssize_t) -> ^PyObject;
Py_buffer :: bufferinfo;
getbufferproc :: #type proc(unamed0 : ^PyObject, unamed1 : ^Py_buffer, unamed2 : _c.int) -> _c.int;
releasebufferproc :: #type proc(unamed0 : ^PyObject, unamed1 : ^Py_buffer);
vectorcallfunc :: #type proc(callable : ^PyObject, args : ^^PyObject, nargsf : _c.size_t, kwnames : ^PyObject) -> ^PyObject;
printfunc :: _c.ssize_t;
PyTypeObject :: _typeobject;
PyHeapTypeObject :: _heaptypeobject;
_PyTime_t :: i64;
Py_UCS4 :: u32;
Py_UCS2 :: u16;
Py_UCS1 :: u8;
Py_UNICODE :: _c.wchar_t;
PyLongObject :: _longobject;
digit :: u32;
sdigit :: i32;
twodigits :: u64;
stwodigits :: i64;
PyDictKeysObject :: _dictkeysobject;
PyODictObject :: _odictobject;
PyCFunction :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject;
_PyCFunctionFast :: #type proc(unamed0 : ^PyObject, unamed1 : ^^PyObject, unamed2 : _c.ssize_t) -> ^PyObject;
PyCFunctionWithKeywords :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject;
_PyCFunctionFastWithKeywords :: #type proc(unamed0 : ^PyObject, unamed1 : ^^PyObject, unamed2 : _c.ssize_t, unamed3 : ^PyObject) -> ^PyObject;
PyNoArgsFunction :: #type proc(unamed0 : ^PyObject) -> ^PyObject;
Py_OpenCodeHookFunction :: #type proc(unamed0 : ^PyObject, unamed1 : rawptr) -> ^PyObject;
PyCapsule_Destructor :: #type proc(unamed0 : ^PyObject);
PyTracebackObject :: _traceback;
PyThread_type_lock :: rawptr;
PyThread_type_sema :: rawptr;
Py_tss_t :: _Py_tss_t;
PyThreadState :: _ts;
PyInterpreterState :: _is;
Py_tracefunc :: #type proc(unamed0 : ^PyObject, unamed1 : ^_frame, unamed2 : _c.int, unamed3 : ^PyObject) -> _c.int;
_PyErr_StackItem :: _err_stackitem;
PyThreadFrameGetter :: #type proc(self_ : ^PyThreadState) -> ^_frame;
_PyCrossInterpreterData :: _xid;
crossinterpdatafunc :: #type proc(unamed0 : ^PyObject, unamed1 : ^_xid) -> _c.int;
getter :: #type proc(unamed0 : ^PyObject, unamed1 : rawptr) -> ^PyObject;
setter :: #type proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : rawptr) -> _c.int;
wrapperfunc :: #type proc(self : ^PyObject, args : ^PyObject, wrapped : rawptr) -> ^PyObject;
wrapperfunc_kwds :: #type proc(self : ^PyObject, args : ^PyObject, wrapped : rawptr, kwds : ^PyObject) -> ^PyObject;
PyWeakReference :: _PyWeakReference;
PyStructSequence :: PyTupleObject;
PyEnvironmentErrorObject :: PyOSErrorObject;
PyContext :: _pycontextobject;
PyContextVar :: _pycontextvarobject;
PyContextToken :: _pycontexttokenobject;
PyArena :: _arena;
_Py_CODEUNIT :: u16;
PyAddrPair :: _addr_pair;
PyOS_sighandler_t :: #type proc(unamed0 : _c.int);
Py_AuditHookFunction :: #type proc(unamed0 : cstring, unamed1 : ^PyObject, unamed2 : rawptr) -> _c.int;

AnonymousEnum0 :: enum i32 {
    TRACEMALLOC_NOT_INITIALIZED,
    TRACEMALLOC_INITIALIZED,
    TRACEMALLOC_FINALIZED,
};

PyMemAllocatorDomain :: enum i32 {
    PYMEM_DOMAIN_RAW,
    PYMEM_DOMAIN_MEM,
    PYMEM_DOMAIN_OBJ,
};

PyMemAllocatorName :: enum i32 {
    PYMEM_ALLOCATOR_NOT_SET = 0,
    PYMEM_ALLOCATOR_DEFAULT = 1,
    PYMEM_ALLOCATOR_DEBUG = 2,
    PYMEM_ALLOCATOR_MALLOC = 3,
    PYMEM_ALLOCATOR_MALLOC_DEBUG = 4,
    PYMEM_ALLOCATOR_PYMALLOC = 5,
    PYMEM_ALLOCATOR_PYMALLOC_DEBUG = 6,
};

_PyTime_round_t :: enum i32 {
    PyTime_ROUND_FLOOR = 0,
    PyTime_ROUND_CEILING = 1,
    PyTime_ROUND_HALF_EVEN = 2,
    PyTime_ROUND_UP = 3,
    PyTime_ROUND_TIMEOUT = 3,
};

PyUnicode_Kind :: enum i32 {
    PyUnicode_WCHAR_KIND = 0,
    PyUnicode_1BYTE_KIND = 1,
    PyUnicode_2BYTE_KIND = 2,
    PyUnicode_4BYTE_KIND = 4,
};

PyLockStatus :: enum i32 {
    PY_LOCK_FAILURE = 0,
    PY_LOCK_ACQUIRED = 1,
    PY_LOCK_INTR,
};

PyGILState_STATE :: enum i32 {
    PyGILState_LOCKED,
    PyGILState_UNLOCKED,
};

AnonymousEnum5 :: enum i32 {
    PyStatus_TYPE_OK = 0,
    PyStatus_TYPE_ERROR = 1,
    PyStatus_TYPE_EXIT = 2,
};

_Py_error_handler :: enum i32 {
    Py_ERROR_UNKNOWN = 0,
    Py_ERROR_STRICT,
    Py_ERROR_SURROGATEESCAPE,
    Py_ERROR_REPLACE,
    Py_ERROR_IGNORE,
    Py_ERROR_BACKSLASHREPLACE,
    Py_ERROR_SURROGATEPASS,
    Py_ERROR_XMLCHARREFREPLACE,
    Py_ERROR_OTHER,
};

_PyTraceMalloc_Config :: struct {
    initialized : AnonymousEnum0,
    tracing : _c.int,
    max_nframe : _c.int,
    use_domain : _c.int,
};

PyMemAllocatorEx :: struct {
    ctx : rawptr,
    malloc : #type proc(ctx : rawptr, size : _c.size_t) -> rawptr,
    calloc : #type proc(ctx : rawptr, nelem : _c.size_t, elsize : _c.size_t) -> rawptr,
    realloc : #type proc(ctx : rawptr, ptr : rawptr, new_size : _c.size_t) -> rawptr,
    free : #type proc(ctx : rawptr, ptr : rawptr),
};

_typeobject :: struct {
    ob_base : PyVarObject,
    tp_name : cstring,
    tp_basicsize : _c.ssize_t,
    tp_itemsize : _c.ssize_t,
    tp_dealloc : destructor,
    tp_vectorcall_offset : _c.ssize_t,
    tp_getattr : getattrfunc,
    tp_setattr : setattrfunc,
    tp_as_async : ^PyAsyncMethods,
    tp_repr : reprfunc,
    tp_as_number : ^PyNumberMethods,
    tp_as_sequence : ^PySequenceMethods,
    tp_as_mapping : ^PyMappingMethods,
    tp_hash : hashfunc,
    tp_call : ternaryfunc,
    tp_str : reprfunc,
    tp_getattro : getattrofunc,
    tp_setattro : setattrofunc,
    tp_as_buffer : ^PyBufferProcs,
    tp_flags : _c.ulong,
    tp_doc : cstring,
    tp_traverse : traverseproc,
    tp_clear : inquiry,
    tp_richcompare : richcmpfunc,
    tp_weaklistoffset : _c.ssize_t,
    tp_iter : getiterfunc,
    tp_iternext : iternextfunc,
    tp_methods : ^PyMethodDef,
    tp_members : ^PyMemberDef,
    tp_getset : ^PyGetSetDef,
    tp_base : ^_typeobject,
    tp_dict : ^PyObject,
    tp_descr_get : descrgetfunc,
    tp_descr_set : descrsetfunc,
    tp_dictoffset : _c.ssize_t,
    tp_init : initproc,
    tp_alloc : allocfunc,
    tp_new : newfunc,
    tp_free : freefunc,
    tp_is_gc : inquiry,
    tp_bases : ^PyObject,
    tp_mro : ^PyObject,
    tp_cache : ^PyObject,
    tp_subclasses : ^PyObject,
    tp_weaklist : ^PyObject,
    tp_del : destructor,
    tp_version_tag : _c.uint,
    tp_finalize : destructor,
    tp_vectorcall : vectorcallfunc,
    tp_print : #type proc(unamed0 : ^PyObject, unamed1 : ^FILE, unamed2 : _c.int) -> _c.int,
};

_object :: struct {
    ob_refcnt : _c.ssize_t,
    ob_type : ^_typeobject,
};

PyObject :: _object;

PyVarObject :: struct {
    ob_base : PyObject,
    ob_size : _c.ssize_t,
};

PyType_Slot :: struct {
    slot : _c.int,
    pfunc : rawptr,
};

PyType_Spec :: struct {
    name : cstring,
    basicsize : _c.int,
    itemsize : _c.int,
    flags : _c.uint,
    slots : ^PyType_Slot,
};

_Py_Identifier :: struct {
    next : ^_Py_Identifier,
    string : cstring,
    object : ^PyObject,
};

bufferinfo :: struct {
    buf : rawptr,
    obj : ^PyObject,
    len : _c.ssize_t,
    itemsize : _c.ssize_t,
    readonly : _c.int,
    ndim : _c.int,
    format : cstring,
    shape : ^_c.ssize_t,
    strides : ^_c.ssize_t,
    suboffsets : ^_c.ssize_t,
    internal : rawptr,
};

PyNumberMethods :: struct {
    nb_add : binaryfunc,
    nb_subtract : binaryfunc,
    nb_multiply : binaryfunc,
    nb_remainder : binaryfunc,
    nb_divmod : binaryfunc,
    nb_power : ternaryfunc,
    nb_negative : unaryfunc,
    nb_positive : unaryfunc,
    nb_absolute : unaryfunc,
    nb_bool : inquiry,
    nb_invert : unaryfunc,
    nb_lshift : binaryfunc,
    nb_rshift : binaryfunc,
    nb_and : binaryfunc,
    nb_xor : binaryfunc,
    nb_or : binaryfunc,
    nb_int : unaryfunc,
    nb_reserved : rawptr,
    nb_float : unaryfunc,
    nb_inplace_add : binaryfunc,
    nb_inplace_subtract : binaryfunc,
    nb_inplace_multiply : binaryfunc,
    nb_inplace_remainder : binaryfunc,
    nb_inplace_power : ternaryfunc,
    nb_inplace_lshift : binaryfunc,
    nb_inplace_rshift : binaryfunc,
    nb_inplace_and : binaryfunc,
    nb_inplace_xor : binaryfunc,
    nb_inplace_or : binaryfunc,
    nb_floor_divide : binaryfunc,
    nb_true_divide : binaryfunc,
    nb_inplace_floor_divide : binaryfunc,
    nb_inplace_true_divide : binaryfunc,
    nb_index : unaryfunc,
    nb_matrix_multiply : binaryfunc,
    nb_inplace_matrix_multiply : binaryfunc,
};

PySequenceMethods :: struct {
    sq_length : lenfunc,
    sq_concat : binaryfunc,
    sq_repeat : ssizeargfunc,
    sq_item : ssizeargfunc,
    was_sq_slice : rawptr,
    sq_ass_item : ssizeobjargproc,
    was_sq_ass_slice : rawptr,
    sq_contains : objobjproc,
    sq_inplace_concat : binaryfunc,
    sq_inplace_repeat : ssizeargfunc,
};

PyMappingMethods :: struct {
    mp_length : lenfunc,
    mp_subscript : binaryfunc,
    mp_ass_subscript : objobjargproc,
};

PyAsyncMethods :: struct {
    am_await : unaryfunc,
    am_aiter : unaryfunc,
    am_anext : unaryfunc,
};

PyBufferProcs :: struct {
    bf_getbuffer : getbufferproc,
    bf_releasebuffer : releasebufferproc,
};

PyMethodDef :: struct {
    ml_name : cstring,
    ml_meth : PyCFunction,
    ml_flags : _c.int,
    ml_doc : cstring,
};

PyMemberDef :: struct {};

PyGetSetDef :: struct {
    name : cstring,
    get : getter,
    set : setter,
    doc : cstring,
    closure : rawptr,
};

_dictkeysobject :: struct {};

_heaptypeobject :: struct {
    ht_type : PyTypeObject,
    as_async : PyAsyncMethods,
    as_number : PyNumberMethods,
    as_mapping : PyMappingMethods,
    as_sequence : PySequenceMethods,
    as_buffer : PyBufferProcs,
    ht_name : ^PyObject,
    ht_slots : ^PyObject,
    ht_qualname : ^PyObject,
    ht_cached_keys : ^_dictkeysobject,
};

_Py_clock_info_t :: struct {
    implementation : cstring,
    monotonic : _c.int,
    adjustable : _c.int,
    resolution : _c.double,
};

PyObjectArenaAllocator :: struct {
    ctx : rawptr,
    alloc : #type proc(ctx : rawptr, size : _c.size_t) -> rawptr,
    free : #type proc(ctx : rawptr, ptr : rawptr, size : _c.size_t),
};

PyGC_Head :: struct {
    gc_next : _c.uintptr_t,
    gc_prev : _c.uintptr_t,
};

AnonymousStruct12 :: struct {
    prefix : _c.ssize_t,
    suffix : _c.ssize_t,
};

AnonymousStruct13 :: struct {
    k0 : u64,
    k1 : u64,
};

AnonymousStruct14 :: struct {
    padding : [16]_c.uchar,
    suffix : _c.ssize_t,
};

AnonymousStruct15 :: struct {
    padding : [16]_c.uchar,
    hashsalt : _c.ssize_t,
};

PyHash_FuncDef :: struct {
    hash : #type proc(unamed0 : rawptr, unamed1 : _c.ssize_t) -> _c.ssize_t,
    name : cstring,
    hash_bits : _c.int,
    seed_bits : _c.int,
};

PyByteArrayObject :: struct {
    ob_base : PyVarObject,
    ob_alloc : _c.ssize_t,
    ob_bytes : cstring,
    ob_start : cstring,
    ob_exports : _c.int,
};

PyBytesObject :: struct {
    ob_base : PyVarObject,
    ob_shash : _c.ssize_t,
    ob_sval : [1]_c.char,
};

_PyBytesWriter :: struct {
    buffer : ^PyObject,
    allocated : _c.ssize_t,
    min_size : _c.ssize_t,
    use_bytearray : _c.int,
    overallocate : _c.int,
    use_small_buffer : _c.int,
    small_buffer : [512]_c.char,
};

AnonymousStruct21 :: struct {
    interned : _c.uint,
    kind : _c.uint,
    compact : _c.uint,
    ascii : _c.uint,
    ready : _c.uint,
    unamed0 : _c.uint,
};

PyASCIIObject :: struct {
    ob_base : PyObject,
    length : _c.ssize_t,
    hash : _c.ssize_t,
    state : AnonymousStruct21,
    wstr : ^_c.wchar_t,
};

PyCompactUnicodeObject :: struct {
    base : PyASCIIObject,
    utf8_length : _c.ssize_t,
    utf8 : cstring,
    wstr_length : _c.ssize_t,
};

PyUnicodeObject :: struct {
    base : PyCompactUnicodeObject,
    data : AnonymousUnion1,
};

_PyUnicodeWriter :: struct {
    buffer : ^PyObject,
    data : rawptr,
    kind : PyUnicode_Kind,
    maxchar : u32,
    size : _c.ssize_t,
    pos : _c.ssize_t,
    min_length : _c.ssize_t,
    min_char : u32,
    overallocate : _c.uchar,
    readonly : _c.uchar,
};

_longobject :: struct {
    ob_base : PyVarObject,
    ob_digit : [1]u32,
};

PyFloatObject :: struct {
    ob_base : PyObject,
    ob_fval : _c.double,
};

Py_complex :: struct {
    real : _c.double,
    imag : _c.double,
};

PyComplexObject :: struct {
    ob_base : PyObject,
    cval : Py_complex,
};

_PyManagedBufferObject :: struct {
    ob_base : PyObject,
    flags : _c.int,
    exports : _c.ssize_t,
    master : Py_buffer,
};

PyMemoryViewObject :: struct {
    ob_base : PyVarObject,
    mbuf : ^_PyManagedBufferObject,
    hash : _c.ssize_t,
    flags : _c.int,
    exports : _c.ssize_t,
    view : Py_buffer,
    weakreflist : ^PyObject,
    ob_array : [1]_c.ssize_t,
};

PyTupleObject :: struct {
    ob_base : PyVarObject,
    ob_item : [1]^PyObject,
};

PyListObject :: struct {
    ob_base : PyVarObject,
    ob_item : ^^PyObject,
    allocated : _c.ssize_t,
};

PyDictObject :: struct {
    ob_base : PyObject,
    ma_used : _c.ssize_t,
    ma_version_tag : u64,
    ma_keys : ^PyDictKeysObject,
    ma_values : ^^PyObject,
};

_PyDictViewObject :: struct {
    ob_base : PyObject,
    dv_dict : ^PyDictObject,
};

_odictobject :: struct {};

setentry :: struct {
    key : ^PyObject,
    hash : _c.ssize_t,
};

PySetObject :: struct {
    ob_base : PyObject,
    fill : _c.ssize_t,
    used : _c.ssize_t,
    mask : _c.ssize_t,
    table : ^setentry,
    hash : _c.ssize_t,
    finger : _c.ssize_t,
    smalltable : [8]setentry,
    weakreflist : ^PyObject,
};

PyCFunctionObject :: struct {
    ob_base : PyObject,
    m_ml : ^PyMethodDef,
    m_self : ^PyObject,
    m_module : ^PyObject,
    m_weakreflist : ^PyObject,
    vectorcall : vectorcallfunc,
};

PyModuleDef :: struct {
    m_base : PyModuleDef_Base,
    m_name : cstring,
    m_doc : cstring,
    m_size : _c.ssize_t,
    m_methods : ^PyMethodDef,
    m_slots : ^PyModuleDef_Slot,
    m_traverse : traverseproc,
    m_clear : inquiry,
    m_free : freefunc,
};

PyModuleDef_Base :: struct {
    ob_base : PyObject,
    m_init : #type proc() -> ^PyObject,
    m_index : _c.ssize_t,
    m_copy : ^PyObject,
};

PyModuleDef_Slot :: struct {
    slot : _c.int,
    value : rawptr,
};

PyFunctionObject :: struct {
    ob_base : PyObject,
    func_code : ^PyObject,
    func_globals : ^PyObject,
    func_defaults : ^PyObject,
    func_kwdefaults : ^PyObject,
    func_closure : ^PyObject,
    func_doc : ^PyObject,
    func_name : ^PyObject,
    func_dict : ^PyObject,
    func_weakreflist : ^PyObject,
    func_module : ^PyObject,
    func_annotations : ^PyObject,
    func_qualname : ^PyObject,
    vectorcall : vectorcallfunc,
};

PyMethodObject :: struct {
    ob_base : PyObject,
    im_func : ^PyObject,
    im_self : ^PyObject,
    im_weakreflist : ^PyObject,
    vectorcall : vectorcallfunc,
};

PyInstanceMethodObject :: struct {
    ob_base : PyObject,
    func : ^PyObject,
};

_frame :: struct {};

_traceback :: struct {
    ob_base : PyObject,
    tb_next : ^_traceback,
    tb_frame : ^_frame,
    tb_lasti : _c.int,
    tb_lineno : _c.int,
};

PySliceObject :: struct {
    ob_base : PyObject,
    start : ^PyObject,
    stop : ^PyObject,
    step : ^PyObject,
};

PyCellObject :: struct {
    ob_base : PyObject,
    ob_ref : ^PyObject,
};

_Py_tss_t :: struct {
    is_initialized : _c.int,
    key : pthread_key_t,
};

_ts :: struct {
    prev : ^_ts,
    next : ^_ts,
    interp : ^PyInterpreterState,
    frame : ^_frame,
    recursion_depth : _c.int,
    overflowed : _c.char,
    recursion_critical : _c.char,
    stackcheck_counter : _c.int,
    tracing : _c.int,
    use_tracing : _c.int,
    c_profilefunc : Py_tracefunc,
    c_tracefunc : Py_tracefunc,
    c_profileobj : ^PyObject,
    c_traceobj : ^PyObject,
    curexc_type : ^PyObject,
    curexc_value : ^PyObject,
    curexc_traceback : ^PyObject,
    exc_state : _PyErr_StackItem,
    exc_info : ^_PyErr_StackItem,
    dict : ^PyObject,
    gilstate_counter : _c.int,
    async_exc : ^PyObject,
    thread_id : _c.ulong,
    trash_delete_nesting : _c.int,
    trash_delete_later : ^PyObject,
    on_delete : #type proc(unamed0 : rawptr),
    on_delete_data : rawptr,
    coroutine_origin_tracking_depth : _c.int,
    async_gen_firstiter : ^PyObject,
    async_gen_finalizer : ^PyObject,
    _context : ^PyObject,
    context_ver : u64,
    id : u64,
};

_is :: struct {};

PyStatus :: struct {
    type : AnonymousEnum5,
    func : cstring,
    err_msg : cstring,
    exitcode : _c.int,
};

PyWideStringList :: struct {
    length : _c.ssize_t,
    items : ^^_c.wchar_t,
};

PyPreConfig :: struct {
    config_init : _c.int,
    parse_argv : _c.int,
    isolated : _c.int,
    use_environment : _c.int,
    configure_locale : _c.int,
    coerce_c_locale : _c.int,
    coerce_c_locale_warn : _c.int,
    utf8_mode : _c.int,
    dev_mode : _c.int,
    allocator : _c.int,
};

PyConfig :: struct {
    config_init : _c.int,
    isolated : _c.int,
    use_environment : _c.int,
    dev_mode : _c.int,
    install_signal_handlers : _c.int,
    use_hash_seed : _c.int,
    hash_seed : _c.ulong,
    faulthandler : _c.int,
    tracemalloc : _c.int,
    import_time : _c.int,
    show_ref_count : _c.int,
    show_alloc_count : _c.int,
    dump_refs : _c.int,
    malloc_stats : _c.int,
    filesystem_encoding : ^_c.wchar_t,
    filesystem_errors : ^_c.wchar_t,
    pycache_prefix : ^_c.wchar_t,
    parse_argv : _c.int,
    argv : PyWideStringList,
    program_name : ^_c.wchar_t,
    xoptions : PyWideStringList,
    warnoptions : PyWideStringList,
    site_import : _c.int,
    bytes_warning : _c.int,
    inspect : _c.int,
    interactive : _c.int,
    optimization_level : _c.int,
    parser_debug : _c.int,
    write_bytecode : _c.int,
    verbose : _c.int,
    quiet : _c.int,
    user_site_directory : _c.int,
    configure_c_stdio : _c.int,
    buffered_stdio : _c.int,
    stdio_encoding : ^_c.wchar_t,
    stdio_errors : ^_c.wchar_t,
    check_hash_pycs_mode : ^_c.wchar_t,
    pathconfig_warnings : _c.int,
    pythonpath_env : ^_c.wchar_t,
    home : ^_c.wchar_t,
    module_search_paths_set : _c.int,
    module_search_paths : PyWideStringList,
    executable : ^_c.wchar_t,
    base_executable : ^_c.wchar_t,
    prefix : ^_c.wchar_t,
    base_prefix : ^_c.wchar_t,
    exec_prefix : ^_c.wchar_t,
    base_exec_prefix : ^_c.wchar_t,
    skip_source_first_line : _c.int,
    run_command : ^_c.wchar_t,
    run_module : ^_c.wchar_t,
    run_filename : ^_c.wchar_t,
    install_importlib : _c.int,
    init_main : _c.int,
};

_err_stackitem :: struct {
    exc_type : ^PyObject,
    exc_value : ^PyObject,
    exc_traceback : ^PyObject,
    previous_item : ^_err_stackitem,
};

_xid :: struct {
    data : rawptr,
    obj : ^PyObject,
    interp : i64,
    new_object : #type proc(unamed0 : ^_xid) -> ^PyObject,
    free : #type proc(unamed0 : rawptr),
};

PyGenObject :: struct {
    ob_base : PyObject,
    gi_frame : ^_frame,
    gi_running : _c.char,
    gi_code : ^PyObject,
    gi_weakreflist : ^PyObject,
    gi_name : ^PyObject,
    gi_qualname : ^PyObject,
    gi_exc_state : _PyErr_StackItem,
};

PyCoroObject :: struct {
    ob_base : PyObject,
    cr_frame : ^_frame,
    cr_running : _c.char,
    cr_code : ^PyObject,
    cr_weakreflist : ^PyObject,
    cr_name : ^PyObject,
    cr_qualname : ^PyObject,
    cr_exc_state : _PyErr_StackItem,
    cr_origin : ^PyObject,
};

PyAsyncGenObject :: struct {
    ob_base : PyObject,
    ag_frame : ^_frame,
    ag_running : _c.char,
    ag_code : ^PyObject,
    ag_weakreflist : ^PyObject,
    ag_name : ^PyObject,
    ag_qualname : ^PyObject,
    ag_exc_state : _PyErr_StackItem,
    ag_finalizer : ^PyObject,
    ag_hooks_inited : _c.int,
    ag_closed : _c.int,
    ag_running_async : _c.int,
};

wrapperbase :: struct {
    name : cstring,
    offset : _c.int,
    function : rawptr,
    wrapper : wrapperfunc,
    doc : cstring,
    flags : _c.int,
    name_strobj : ^PyObject,
};

PyDescrObject :: struct {
    ob_base : PyObject,
    d_type : ^PyTypeObject,
    d_name : ^PyObject,
    d_qualname : ^PyObject,
};

PyMethodDescrObject :: struct {
    d_common : PyDescrObject,
    d_method : ^PyMethodDef,
    vectorcall : vectorcallfunc,
};

PyMemberDescrObject :: struct {
    d_common : PyDescrObject,
    d_member : ^PyMemberDef,
};

PyGetSetDescrObject :: struct {
    d_common : PyDescrObject,
    d_getset : ^PyGetSetDef,
};

PyWrapperDescrObject :: struct {
    d_common : PyDescrObject,
    d_base : ^wrapperbase,
    d_wrapped : rawptr,
};

_PyWeakReference :: struct {
    ob_base : PyObject,
    wr_object : ^PyObject,
    wr_callback : ^PyObject,
    hash : _c.ssize_t,
    wr_prev : ^PyWeakReference,
    wr_next : ^PyWeakReference,
};

PyStructSequence_Field :: struct {
    name : cstring,
    doc : cstring,
};

PyStructSequence_Desc :: struct {
    name : cstring,
    doc : cstring,
    fields : ^PyStructSequence_Field,
    n_in_sequence : _c.int,
};

PyBaseExceptionObject :: struct {
    ob_base : PyObject,
    dict : ^PyObject,
    args : ^PyObject,
    traceback : ^PyObject,
    _context : ^PyObject,
    cause : ^PyObject,
    suppress_context : _c.char,
};

PySyntaxErrorObject :: struct {
    ob_base : PyObject,
    dict : ^PyObject,
    args : ^PyObject,
    traceback : ^PyObject,
    _context : ^PyObject,
    cause : ^PyObject,
    suppress_context : _c.char,
    msg : ^PyObject,
    filename : ^PyObject,
    lineno : ^PyObject,
    offset : ^PyObject,
    text : ^PyObject,
    print_file_and_line : ^PyObject,
};

PyImportErrorObject :: struct {
    ob_base : PyObject,
    dict : ^PyObject,
    args : ^PyObject,
    traceback : ^PyObject,
    _context : ^PyObject,
    cause : ^PyObject,
    suppress_context : _c.char,
    msg : ^PyObject,
    name : ^PyObject,
    path : ^PyObject,
};

PyUnicodeErrorObject :: struct {
    ob_base : PyObject,
    dict : ^PyObject,
    args : ^PyObject,
    traceback : ^PyObject,
    _context : ^PyObject,
    cause : ^PyObject,
    suppress_context : _c.char,
    encoding : ^PyObject,
    object : ^PyObject,
    start : _c.ssize_t,
    end : _c.ssize_t,
    reason : ^PyObject,
};

PySystemExitObject :: struct {
    ob_base : PyObject,
    dict : ^PyObject,
    args : ^PyObject,
    traceback : ^PyObject,
    _context : ^PyObject,
    cause : ^PyObject,
    suppress_context : _c.char,
    code : ^PyObject,
};

PyOSErrorObject :: struct {
    ob_base : PyObject,
    dict : ^PyObject,
    args : ^PyObject,
    traceback : ^PyObject,
    _context : ^PyObject,
    cause : ^PyObject,
    suppress_context : _c.char,
    myerrno : ^PyObject,
    strerror : ^PyObject,
    filename : ^PyObject,
    filename2 : ^PyObject,
    written : _c.ssize_t,
};

PyStopIterationObject :: struct {
    ob_base : PyObject,
    dict : ^PyObject,
    args : ^PyObject,
    traceback : ^PyObject,
    _context : ^PyObject,
    cause : ^PyObject,
    suppress_context : _c.char,
    value : ^PyObject,
};

_pycontextobject :: struct {};

_pycontextvarobject :: struct {};

_pycontexttokenobject :: struct {};

_arena :: struct {};

_PyArg_Parser :: struct {
    format : cstring,
    keywords : ^cstring,
    fname : cstring,
    custom_msg : cstring,
    pos : _c.int,
    min : _c.int,
    max : _c.int,
    kwtuple : ^PyObject,
    next : ^_PyArg_Parser,
};

_PyOpcache :: struct {};

PyCodeObject :: struct {
    ob_base : PyObject,
    co_argcount : _c.int,
    co_posonlyargcount : _c.int,
    co_kwonlyargcount : _c.int,
    co_nlocals : _c.int,
    co_stacksize : _c.int,
    co_flags : _c.int,
    co_firstlineno : _c.int,
    co_code : ^PyObject,
    co_consts : ^PyObject,
    co_names : ^PyObject,
    co_varnames : ^PyObject,
    co_freevars : ^PyObject,
    co_cellvars : ^PyObject,
    co_cell2arg : ^_c.ssize_t,
    co_filename : ^PyObject,
    co_name : ^PyObject,
    co_lnotab : ^PyObject,
    co_zombieframe : rawptr,
    co_weakreflist : ^PyObject,
    co_extra : rawptr,
    co_opcache_map : ^_c.uchar,
    co_opcache : ^_PyOpcache,
    co_opcache_flag : _c.int,
    co_opcache_size : _c.uchar,
};

_addr_pair :: struct {
    ap_lower : _c.int,
    ap_upper : _c.int,
};

_node :: struct {};

PyCompilerFlags :: struct {
    cf_flags : _c.int,
    cf_feature_version : _c.int,
};

PyFutureFeatures :: struct {
    ff_features : _c.int,
    ff_lineno : _c.int,
};

_mod :: struct {};

symtable :: struct {};

_inittab :: struct {
    name : cstring,
    initfunc : #type proc() -> ^PyObject,
};

_frozen :: struct {
    name : cstring,
    code : ^_c.uchar,
    size : _c.int,
};

_Py_HashSecret_t :: struct #raw_union {
    uc : [24]_c.uchar,
    fnv : AnonymousStruct12,
    siphash : AnonymousStruct13,
    djbx33a : AnonymousStruct14,
    expat : AnonymousStruct15,
};

AnonymousUnion1 :: struct #raw_union {
    any : rawptr,
    latin1 : ^u8,
    ucs2 : ^u16,
    ucs4 : ^u32,
};

@(default_calling_convention="c")
foreign python {

    @(link_name="_Py_get_387controlword")
    _Py_get_387controlword :: proc() -> _c.ushort ---;

    @(link_name="_Py_set_387controlword")
    _Py_set_387controlword :: proc(unamed0 : _c.ushort) ---;

    @(link_name="PyMem_Malloc")
    PyMem_Malloc :: proc(size : _c.size_t) -> rawptr ---;

    @(link_name="PyMem_Realloc")
    PyMem_Realloc :: proc(ptr : rawptr, new_size : _c.size_t) -> rawptr ---;

    @(link_name="PyMem_Free")
    PyMem_Free :: proc(ptr : rawptr) ---;

    @(link_name="PyMem_RawMalloc")
    PyMem_RawMalloc :: proc(size : _c.size_t) -> rawptr ---;

    @(link_name="PyMem_RawCalloc")
    PyMem_RawCalloc :: proc(nelem : _c.size_t, elsize : _c.size_t) -> rawptr ---;

    @(link_name="PyMem_RawRealloc")
    PyMem_RawRealloc :: proc(ptr : rawptr, new_size : _c.size_t) -> rawptr ---;

    @(link_name="PyMem_RawFree")
    PyMem_RawFree :: proc(ptr : rawptr) ---;

    @(link_name="_PyMem_GetCurrentAllocatorName")
    _PyMem_GetCurrentAllocatorName :: proc() -> cstring ---;

    @(link_name="PyMem_Calloc")
    PyMem_Calloc :: proc(nelem : _c.size_t, elsize : _c.size_t) -> rawptr ---;

    @(link_name="_PyMem_RawStrdup")
    _PyMem_RawStrdup :: proc(str : cstring) -> cstring ---;

    @(link_name="_PyMem_Strdup")
    _PyMem_Strdup :: proc(str : cstring) -> cstring ---;

    @(link_name="_PyMem_RawWcsdup")
    _PyMem_RawWcsdup :: proc(str : ^_c.wchar_t) -> ^_c.wchar_t ---;

    @(link_name="PyMem_GetAllocator")
    PyMem_GetAllocator :: proc(domain : PyMemAllocatorDomain, allocator : ^PyMemAllocatorEx) ---;

    @(link_name="PyMem_SetAllocator")
    PyMem_SetAllocator :: proc(domain : PyMemAllocatorDomain, allocator : ^PyMemAllocatorEx) ---;

    @(link_name="PyMem_SetupDebugHooks")
    PyMem_SetupDebugHooks :: proc() ---;

    @(link_name="PyType_FromSpec")
    PyType_FromSpec :: proc(unamed0 : ^PyType_Spec) -> ^PyObject ---;

    @(link_name="PyType_FromSpecWithBases")
    PyType_FromSpecWithBases :: proc(unamed0 : ^PyType_Spec, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyType_GetSlot")
    PyType_GetSlot :: proc(unamed0 : ^_typeobject, unamed1 : _c.int) -> rawptr ---;

    @(link_name="PyType_IsSubtype")
    PyType_IsSubtype :: proc(unamed0 : ^_typeobject, unamed1 : ^_typeobject) -> _c.int ---;

    @(link_name="PyType_GetFlags")
    PyType_GetFlags :: proc(unamed0 : ^_typeobject) -> _c.ulong ---;

    @(link_name="PyType_Ready")
    PyType_Ready :: proc(unamed0 : ^_typeobject) -> _c.int ---;

    @(link_name="PyType_GenericAlloc")
    PyType_GenericAlloc :: proc(unamed0 : ^_typeobject, unamed1 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyType_GenericNew")
    PyType_GenericNew :: proc(unamed0 : ^_typeobject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyType_ClearCache")
    PyType_ClearCache :: proc() -> _c.uint ---;

    @(link_name="PyType_Modified")
    PyType_Modified :: proc(unamed0 : ^_typeobject) ---;

    @(link_name="PyObject_Repr")
    PyObject_Repr :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_Str")
    PyObject_Str :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_ASCII")
    PyObject_ASCII :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_Bytes")
    PyObject_Bytes :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_RichCompare")
    PyObject_RichCompare :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : _c.int) -> ^PyObject ---;

    @(link_name="PyObject_RichCompareBool")
    PyObject_RichCompareBool :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : _c.int) -> _c.int ---;

    @(link_name="PyObject_GetAttrString")
    PyObject_GetAttrString :: proc(unamed0 : ^PyObject, unamed1 : cstring) -> ^PyObject ---;

    @(link_name="PyObject_SetAttrString")
    PyObject_SetAttrString :: proc(unamed0 : ^PyObject, unamed1 : cstring, unamed2 : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_HasAttrString")
    PyObject_HasAttrString :: proc(unamed0 : ^PyObject, unamed1 : cstring) -> _c.int ---;

    @(link_name="PyObject_GetAttr")
    PyObject_GetAttr :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_SetAttr")
    PyObject_SetAttr :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_HasAttr")
    PyObject_HasAttr :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_SelfIter")
    PyObject_SelfIter :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_GenericGetAttr")
    PyObject_GenericGetAttr :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_GenericSetAttr")
    PyObject_GenericSetAttr :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_GenericSetDict")
    PyObject_GenericSetDict :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : rawptr) -> _c.int ---;

    @(link_name="PyObject_Hash")
    PyObject_Hash :: proc(unamed0 : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyObject_HashNotImplemented")
    PyObject_HashNotImplemented :: proc(unamed0 : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyObject_IsTrue")
    PyObject_IsTrue :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_Not")
    PyObject_Not :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyCallable_Check")
    PyCallable_Check :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_ClearWeakRefs")
    PyObject_ClearWeakRefs :: proc(unamed0 : ^PyObject) ---;

    @(link_name="PyObject_Dir")
    PyObject_Dir :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="Py_ReprEnter")
    Py_ReprEnter :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="Py_ReprLeave")
    Py_ReprLeave :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyTraceMalloc_NewReference")
    _PyTraceMalloc_NewReference :: proc(op : ^PyObject) -> _c.int ---;

    @(link_name="_Py_NewReference")
    _Py_NewReference :: proc(op : ^PyObject) ---;

    @(link_name="_Py_ForgetReference")
    _Py_ForgetReference :: proc(op : ^PyObject) ---;

    @(link_name="_Py_Dealloc")
    _Py_Dealloc :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_Py_INCREF")
    _Py_INCREF :: proc(op : ^PyObject) ---;

    @(link_name="_Py_DECREF")
    _Py_DECREF :: proc(filename : cstring, lineno : _c.int, op : ^PyObject) ---;

    @(link_name="_Py_XINCREF")
    _Py_XINCREF :: proc(op : ^PyObject) ---;

    @(link_name="_Py_XDECREF")
    _Py_XDECREF :: proc(op : ^PyObject) ---;

    @(link_name="Py_IncRef")
    Py_IncRef :: proc(unamed0 : ^PyObject) ---;

    @(link_name="Py_DecRef")
    Py_DecRef :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyTrash_thread_deposit_object")
    _PyTrash_thread_deposit_object :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyTrash_thread_destroy_chain")
    _PyTrash_thread_destroy_chain :: proc() ---;

    @(link_name="_PyType_Name")
    _PyType_Name :: proc(unamed0 : ^PyTypeObject) -> cstring ---;

    @(link_name="_PyType_Lookup")
    _PyType_Lookup :: proc(unamed0 : ^PyTypeObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyType_LookupId")
    _PyType_LookupId :: proc(unamed0 : ^PyTypeObject, unamed1 : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PyObject_LookupSpecial")
    _PyObject_LookupSpecial :: proc(unamed0 : ^PyObject, unamed1 : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PyType_CalculateMetaclass")
    _PyType_CalculateMetaclass :: proc(unamed0 : ^PyTypeObject, unamed1 : ^PyObject) -> ^PyTypeObject ---;

    @(link_name="_PyType_GetDocFromInternalDoc")
    _PyType_GetDocFromInternalDoc :: proc(unamed0 : cstring, unamed1 : cstring) -> ^PyObject ---;

    @(link_name="_PyType_GetTextSignatureFromInternalDoc")
    _PyType_GetTextSignatureFromInternalDoc :: proc(unamed0 : cstring, unamed1 : cstring) -> ^PyObject ---;

    @(link_name="PyObject_Print")
    PyObject_Print :: proc(unamed0 : ^PyObject, unamed1 : ^FILE, unamed2 : _c.int) -> _c.int ---;

    @(link_name="_Py_BreakPoint")
    _Py_BreakPoint :: proc() ---;

    @(link_name="_PyObject_Dump")
    _PyObject_Dump :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyObject_IsFreed")
    _PyObject_IsFreed :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="_PyObject_IsAbstract")
    _PyObject_IsAbstract :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="_PyObject_GetAttrId")
    _PyObject_GetAttrId :: proc(unamed0 : ^PyObject, unamed1 : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PyObject_SetAttrId")
    _PyObject_SetAttrId :: proc(unamed0 : ^PyObject, unamed1 : ^_Py_Identifier, unamed2 : ^PyObject) -> _c.int ---;

    @(link_name="_PyObject_HasAttrId")
    _PyObject_HasAttrId :: proc(unamed0 : ^PyObject, unamed1 : ^_Py_Identifier) -> _c.int ---;

    @(link_name="_PyObject_LookupAttr")
    _PyObject_LookupAttr :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^^PyObject) -> _c.int ---;

    @(link_name="_PyObject_LookupAttrId")
    _PyObject_LookupAttrId :: proc(unamed0 : ^PyObject, unamed1 : ^_Py_Identifier, unamed2 : ^^PyObject) -> _c.int ---;

    @(link_name="_PyObject_GetDictPtr")
    _PyObject_GetDictPtr :: proc(unamed0 : ^PyObject) -> ^^PyObject ---;

    @(link_name="_PyObject_NextNotImplemented")
    _PyObject_NextNotImplemented :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_CallFinalizer")
    PyObject_CallFinalizer :: proc(unamed0 : ^PyObject) ---;

    @(link_name="PyObject_CallFinalizerFromDealloc")
    PyObject_CallFinalizerFromDealloc :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="_PyObject_GenericGetAttrWithDict")
    _PyObject_GenericGetAttrWithDict :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject, unamed3 : _c.int) -> ^PyObject ---;

    @(link_name="_PyObject_GenericSetAttrWithDict")
    _PyObject_GenericSetAttrWithDict :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject, unamed3 : ^PyObject) -> _c.int ---;

    @(link_name="_Py_Dealloc_inline")
    _Py_Dealloc_inline :: proc(op : ^PyObject) ---;

    @(link_name="_PyTrash_deposit_object")
    _PyTrash_deposit_object :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyTrash_destroy_chain")
    _PyTrash_destroy_chain :: proc() ---;

    @(link_name="_PyDebugAllocatorStats")
    _PyDebugAllocatorStats :: proc(out : ^FILE, block_name : cstring, num_blocks : _c.int, sizeof_block : _c.size_t) ---;

    @(link_name="_PyObject_DebugTypeStats")
    _PyObject_DebugTypeStats :: proc(out : ^FILE) ---;

    @(link_name="_PyObject_AssertFailed")
    _PyObject_AssertFailed :: proc(obj : ^PyObject, expr : cstring, msg : cstring, file : cstring, line : _c.int, function : cstring) ---;

    @(link_name="_PyObject_CheckConsistency")
    _PyObject_CheckConsistency :: proc(op : ^PyObject, check_content : _c.int) -> _c.int ---;

    @(link_name="_PyLong_FromTime_t")
    _PyLong_FromTime_t :: proc(sec : time_t) -> ^PyObject ---;

    @(link_name="_PyLong_AsTime_t")
    _PyLong_AsTime_t :: proc(obj : ^PyObject) -> time_t ---;

    @(link_name="_PyTime_ObjectToTime_t")
    _PyTime_ObjectToTime_t :: proc(obj : ^PyObject, sec : ^time_t, unamed0 : _PyTime_round_t) -> _c.int ---;

    @(link_name="_PyTime_ObjectToTimeval")
    _PyTime_ObjectToTimeval :: proc(obj : ^PyObject, sec : ^time_t, usec : ^_c.long, unamed0 : _PyTime_round_t) -> _c.int ---;

    @(link_name="_PyTime_ObjectToTimespec")
    _PyTime_ObjectToTimespec :: proc(obj : ^PyObject, sec : ^time_t, nsec : ^_c.long, unamed0 : _PyTime_round_t) -> _c.int ---;

    @(link_name="_PyTime_FromSeconds")
    _PyTime_FromSeconds :: proc(seconds : _c.int) -> i64 ---;

    @(link_name="_PyTime_FromNanoseconds")
    _PyTime_FromNanoseconds :: proc(ns : i64) -> i64 ---;

    @(link_name="_PyTime_FromNanosecondsObject")
    _PyTime_FromNanosecondsObject :: proc(t : ^i64, obj : ^PyObject) -> _c.int ---;

    @(link_name="_PyTime_FromSecondsObject")
    _PyTime_FromSecondsObject :: proc(t : ^i64, obj : ^PyObject, round : _PyTime_round_t) -> _c.int ---;

    @(link_name="_PyTime_FromMillisecondsObject")
    _PyTime_FromMillisecondsObject :: proc(t : ^i64, obj : ^PyObject, round : _PyTime_round_t) -> _c.int ---;

    @(link_name="_PyTime_AsSecondsDouble")
    _PyTime_AsSecondsDouble :: proc(t : i64) -> _c.double ---;

    @(link_name="_PyTime_AsMilliseconds")
    _PyTime_AsMilliseconds :: proc(t : i64, round : _PyTime_round_t) -> i64 ---;

    @(link_name="_PyTime_AsMicroseconds")
    _PyTime_AsMicroseconds :: proc(t : i64, round : _PyTime_round_t) -> i64 ---;

    @(link_name="_PyTime_AsNanosecondsObject")
    _PyTime_AsNanosecondsObject :: proc(t : i64) -> ^PyObject ---;

    @(link_name="_PyTime_FromTimeval")
    _PyTime_FromTimeval :: proc(tp : ^i64, tv : ^timeval) -> _c.int ---;

    @(link_name="_PyTime_AsTimeval")
    _PyTime_AsTimeval :: proc(t : i64, tv : ^timeval, round : _PyTime_round_t) -> _c.int ---;

    @(link_name="_PyTime_AsTimeval_noraise")
    _PyTime_AsTimeval_noraise :: proc(t : i64, tv : ^timeval, round : _PyTime_round_t) -> _c.int ---;

    @(link_name="_PyTime_AsTimevalTime_t")
    _PyTime_AsTimevalTime_t :: proc(t : i64, secs : ^time_t, us : ^_c.int, round : _PyTime_round_t) -> _c.int ---;

    @(link_name="_PyTime_FromTimespec")
    _PyTime_FromTimespec :: proc(tp : ^i64, ts : ^timespec) -> _c.int ---;

    @(link_name="_PyTime_AsTimespec")
    _PyTime_AsTimespec :: proc(t : i64, ts : ^timespec) -> _c.int ---;

    @(link_name="_PyTime_MulDiv")
    _PyTime_MulDiv :: proc(ticks : i64, mul : i64, div : i64) -> i64 ---;

    @(link_name="_PyTime_GetSystemClock")
    _PyTime_GetSystemClock :: proc() -> i64 ---;

    @(link_name="_PyTime_GetMonotonicClock")
    _PyTime_GetMonotonicClock :: proc() -> i64 ---;

    @(link_name="_PyTime_GetSystemClockWithInfo")
    _PyTime_GetSystemClockWithInfo :: proc(t : ^i64, info : ^_Py_clock_info_t) -> _c.int ---;

    @(link_name="_PyTime_GetMonotonicClockWithInfo")
    _PyTime_GetMonotonicClockWithInfo :: proc(t : ^i64, info : ^_Py_clock_info_t) -> _c.int ---;

    @(link_name="_PyTime_Init")
    _PyTime_Init :: proc() -> _c.int ---;

    @(link_name="_PyTime_localtime")
    _PyTime_localtime :: proc(t : time_t, tm : ^tm) -> _c.int ---;

    @(link_name="_PyTime_gmtime")
    _PyTime_gmtime :: proc(t : time_t, tm : ^tm) -> _c.int ---;

    @(link_name="_PyTime_GetPerfCounter")
    _PyTime_GetPerfCounter :: proc() -> i64 ---;

    @(link_name="_PyTime_GetPerfCounterWithInfo")
    _PyTime_GetPerfCounterWithInfo :: proc(t : ^i64, info : ^_Py_clock_info_t) -> _c.int ---;

    @(link_name="PyObject_Malloc")
    PyObject_Malloc :: proc(size : _c.size_t) -> rawptr ---;

    @(link_name="PyObject_Calloc")
    PyObject_Calloc :: proc(nelem : _c.size_t, elsize : _c.size_t) -> rawptr ---;

    @(link_name="PyObject_Realloc")
    PyObject_Realloc :: proc(ptr : rawptr, new_size : _c.size_t) -> rawptr ---;

    @(link_name="PyObject_Free")
    PyObject_Free :: proc(ptr : rawptr) ---;

    @(link_name="PyObject_Init")
    PyObject_Init :: proc(unamed0 : ^PyObject, unamed1 : ^PyTypeObject) -> ^PyObject ---;

    @(link_name="PyObject_InitVar")
    PyObject_InitVar :: proc(unamed0 : ^PyVarObject, unamed1 : ^PyTypeObject, unamed2 : _c.ssize_t) -> ^PyVarObject ---;

    @(link_name="_PyObject_New")
    _PyObject_New :: proc(unamed0 : ^PyTypeObject) -> ^PyObject ---;

    @(link_name="_PyObject_NewVar")
    _PyObject_NewVar :: proc(unamed0 : ^PyTypeObject, unamed1 : _c.ssize_t) -> ^PyVarObject ---;

    @(link_name="_PyObject_INIT")
    _PyObject_INIT :: proc(op : ^PyObject, typeobj : ^PyTypeObject) -> ^PyObject ---;

    @(link_name="_PyObject_INIT_VAR")
    _PyObject_INIT_VAR :: proc(op : ^PyVarObject, typeobj : ^PyTypeObject, size : _c.ssize_t) -> ^PyVarObject ---;

    @(link_name="PyGC_Collect")
    PyGC_Collect :: proc() -> _c.ssize_t ---;

    @(link_name="_PyObject_GC_Resize")
    _PyObject_GC_Resize :: proc(unamed0 : ^PyVarObject, unamed1 : _c.ssize_t) -> ^PyVarObject ---;

    @(link_name="_PyObject_GC_New")
    _PyObject_GC_New :: proc(unamed0 : ^PyTypeObject) -> ^PyObject ---;

    @(link_name="_PyObject_GC_NewVar")
    _PyObject_GC_NewVar :: proc(unamed0 : ^PyTypeObject, unamed1 : _c.ssize_t) -> ^PyVarObject ---;

    @(link_name="PyObject_GC_Track")
    PyObject_GC_Track :: proc(unamed0 : rawptr) ---;

    @(link_name="PyObject_GC_UnTrack")
    PyObject_GC_UnTrack :: proc(unamed0 : rawptr) ---;

    @(link_name="PyObject_GC_Del")
    PyObject_GC_Del :: proc(unamed0 : rawptr) ---;

    @(link_name="_Py_GetAllocatedBlocks")
    _Py_GetAllocatedBlocks :: proc() -> _c.ssize_t ---;

    @(link_name="_PyObject_DebugMallocStats")
    _PyObject_DebugMallocStats :: proc(out : ^FILE) -> _c.int ---;

    @(link_name="PyObject_GetArenaAllocator")
    PyObject_GetArenaAllocator :: proc(allocator : ^PyObjectArenaAllocator) ---;

    @(link_name="PyObject_SetArenaAllocator")
    PyObject_SetArenaAllocator :: proc(allocator : ^PyObjectArenaAllocator) ---;

    @(link_name="_PyGC_CollectNoFail")
    _PyGC_CollectNoFail :: proc() -> _c.ssize_t ---;

    @(link_name="_PyGC_CollectIfEnabled")
    _PyGC_CollectIfEnabled :: proc() -> _c.ssize_t ---;

    @(link_name="_PyObject_GC_Malloc")
    _PyObject_GC_Malloc :: proc(size : _c.size_t) -> ^PyObject ---;

    @(link_name="_PyObject_GC_Calloc")
    _PyObject_GC_Calloc :: proc(size : _c.size_t) -> ^PyObject ---;

    @(link_name="_Py_HashDouble")
    _Py_HashDouble :: proc(unamed0 : _c.double) -> _c.ssize_t ---;

    @(link_name="_Py_HashPointer")
    _Py_HashPointer :: proc(unamed0 : rawptr) -> _c.ssize_t ---;

    @(link_name="_Py_HashBytes")
    _Py_HashBytes :: proc(unamed0 : rawptr, unamed1 : _c.ssize_t) -> _c.ssize_t ---;

    @(link_name="PyHash_GetFuncDef")
    PyHash_GetFuncDef :: proc() -> ^PyHash_FuncDef ---;

    @(link_name="PyByteArray_FromObject")
    PyByteArray_FromObject :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyByteArray_Concat")
    PyByteArray_Concat :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyByteArray_FromStringAndSize")
    PyByteArray_FromStringAndSize :: proc(unamed0 : cstring, unamed1 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyByteArray_Size")
    PyByteArray_Size :: proc(unamed0 : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyByteArray_AsString")
    PyByteArray_AsString :: proc(unamed0 : ^PyObject) -> cstring ---;

    @(link_name="PyByteArray_Resize")
    PyByteArray_Resize :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="PyBytes_FromStringAndSize")
    PyBytes_FromStringAndSize :: proc(unamed0 : cstring, unamed1 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyBytes_FromString")
    PyBytes_FromString :: proc(unamed0 : cstring) -> ^PyObject ---;

    @(link_name="PyBytes_FromObject")
    PyBytes_FromObject :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyBytes_FromFormatV")
    PyBytes_FromFormatV :: proc(unamed0 : cstring, unamed1 : va_list) -> ^PyObject ---;

    @(link_name="PyBytes_FromFormat")
    PyBytes_FromFormat :: proc(unamed0 : cstring) -> ^PyObject ---;

    @(link_name="PyBytes_Size")
    PyBytes_Size :: proc(unamed0 : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyBytes_AsString")
    PyBytes_AsString :: proc(unamed0 : ^PyObject) -> cstring ---;

    @(link_name="PyBytes_Repr")
    PyBytes_Repr :: proc(unamed0 : ^PyObject, unamed1 : _c.int) -> ^PyObject ---;

    @(link_name="PyBytes_Concat")
    PyBytes_Concat :: proc(unamed0 : ^^PyObject, unamed1 : ^PyObject) ---;

    @(link_name="PyBytes_ConcatAndDel")
    PyBytes_ConcatAndDel :: proc(unamed0 : ^^PyObject, unamed1 : ^PyObject) ---;

    @(link_name="_PyBytes_Resize")
    _PyBytes_Resize :: proc(unamed0 : ^^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyBytes_FormatEx")
    _PyBytes_FormatEx :: proc(format : cstring, format_len : _c.ssize_t, args : ^PyObject, use_bytearray : _c.int) -> ^PyObject ---;

    @(link_name="_PyBytes_FromHex")
    _PyBytes_FromHex :: proc(string : ^PyObject, use_bytearray : _c.int) -> ^PyObject ---;

    @(link_name="PyBytes_DecodeEscape")
    PyBytes_DecodeEscape :: proc(unamed0 : cstring, unamed1 : _c.ssize_t, unamed2 : cstring, unamed3 : _c.ssize_t, unamed4 : cstring) -> ^PyObject ---;

    @(link_name="_PyBytes_DecodeEscape")
    _PyBytes_DecodeEscape :: proc(unamed0 : cstring, unamed1 : _c.ssize_t, unamed2 : cstring, unamed3 : _c.ssize_t, unamed4 : cstring, unamed5 : ^cstring) -> ^PyObject ---;

    @(link_name="_PyBytes_Join")
    _PyBytes_Join :: proc(sep : ^PyObject, x : ^PyObject) -> ^PyObject ---;

    @(link_name="PyBytes_AsStringAndSize")
    PyBytes_AsStringAndSize :: proc(obj : ^PyObject, s : ^cstring, len : ^_c.ssize_t) -> _c.int ---;

    @(link_name="_PyBytes_InsertThousandsGroupingLocale")
    _PyBytes_InsertThousandsGroupingLocale :: proc(buffer : cstring, n_buffer : _c.ssize_t, digits : cstring, n_digits : _c.ssize_t, min_width : _c.ssize_t) -> _c.ssize_t ---;

    @(link_name="_PyBytes_InsertThousandsGrouping")
    _PyBytes_InsertThousandsGrouping :: proc(buffer : cstring, n_buffer : _c.ssize_t, digits : cstring, n_digits : _c.ssize_t, min_width : _c.ssize_t, grouping : cstring, thousands_sep : cstring) -> _c.ssize_t ---;

    @(link_name="_PyBytesWriter_Init")
    _PyBytesWriter_Init :: proc(writer : ^_PyBytesWriter) ---;

    @(link_name="_PyBytesWriter_Finish")
    _PyBytesWriter_Finish :: proc(writer : ^_PyBytesWriter, str : rawptr) -> ^PyObject ---;

    @(link_name="_PyBytesWriter_Dealloc")
    _PyBytesWriter_Dealloc :: proc(writer : ^_PyBytesWriter) ---;

    @(link_name="_PyBytesWriter_Alloc")
    _PyBytesWriter_Alloc :: proc(writer : ^_PyBytesWriter, size : _c.ssize_t) -> rawptr ---;

    @(link_name="_PyBytesWriter_Prepare")
    _PyBytesWriter_Prepare :: proc(writer : ^_PyBytesWriter, str : rawptr, size : _c.ssize_t) -> rawptr ---;

    @(link_name="_PyBytesWriter_Resize")
    _PyBytesWriter_Resize :: proc(writer : ^_PyBytesWriter, str : rawptr, size : _c.ssize_t) -> rawptr ---;

    @(link_name="_PyBytesWriter_WriteBytes")
    _PyBytesWriter_WriteBytes :: proc(writer : ^_PyBytesWriter, str : rawptr, bytes : rawptr, size : _c.ssize_t) -> rawptr ---;

    @(link_name="PyUnicode_FromStringAndSize")
    PyUnicode_FromStringAndSize :: proc(u : cstring, size : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_FromString")
    PyUnicode_FromString :: proc(u : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_Substring")
    PyUnicode_Substring :: proc(str : ^PyObject, start : _c.ssize_t, end : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_AsUCS4")
    PyUnicode_AsUCS4 :: proc(unicode : ^PyObject, buffer : ^u32, buflen : _c.ssize_t, copy_null : _c.int) -> ^u32 ---;

    @(link_name="PyUnicode_AsUCS4Copy")
    PyUnicode_AsUCS4Copy :: proc(unicode : ^PyObject) -> ^u32 ---;

    @(link_name="PyUnicode_GetLength")
    PyUnicode_GetLength :: proc(unicode : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyUnicode_GetSize")
    PyUnicode_GetSize :: proc(unicode : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyUnicode_ReadChar")
    PyUnicode_ReadChar :: proc(unicode : ^PyObject, index : _c.ssize_t) -> u32 ---;

    @(link_name="PyUnicode_WriteChar")
    PyUnicode_WriteChar :: proc(unicode : ^PyObject, index : _c.ssize_t, character : u32) -> _c.int ---;

    @(link_name="PyUnicode_Resize")
    PyUnicode_Resize :: proc(unicode : ^^PyObject, length : _c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicode_FromEncodedObject")
    PyUnicode_FromEncodedObject :: proc(obj : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_FromObject")
    PyUnicode_FromObject :: proc(obj : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_FromFormatV")
    PyUnicode_FromFormatV :: proc(format : cstring, vargs : va_list) -> ^PyObject ---;

    @(link_name="PyUnicode_FromFormat")
    PyUnicode_FromFormat :: proc(format : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_InternInPlace")
    PyUnicode_InternInPlace :: proc(unamed0 : ^^PyObject) ---;

    @(link_name="PyUnicode_InternImmortal")
    PyUnicode_InternImmortal :: proc(unamed0 : ^^PyObject) ---;

    @(link_name="PyUnicode_InternFromString")
    PyUnicode_InternFromString :: proc(u : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_FromWideChar")
    PyUnicode_FromWideChar :: proc(w : ^_c.wchar_t, size : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_AsWideChar")
    PyUnicode_AsWideChar :: proc(unicode : ^PyObject, w : ^_c.wchar_t, size : _c.ssize_t) -> _c.ssize_t ---;

    @(link_name="PyUnicode_AsWideCharString")
    PyUnicode_AsWideCharString :: proc(unicode : ^PyObject, size : ^_c.ssize_t) -> ^_c.wchar_t ---;

    @(link_name="PyUnicode_FromOrdinal")
    PyUnicode_FromOrdinal :: proc(ordinal : _c.int) -> ^PyObject ---;

    @(link_name="PyUnicode_ClearFreeList")
    PyUnicode_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="PyUnicode_GetDefaultEncoding")
    PyUnicode_GetDefaultEncoding :: proc() -> cstring ---;

    @(link_name="PyUnicode_Decode")
    PyUnicode_Decode :: proc(s : cstring, size : _c.ssize_t, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsDecodedObject")
    PyUnicode_AsDecodedObject :: proc(unicode : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsDecodedUnicode")
    PyUnicode_AsDecodedUnicode :: proc(unicode : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsEncodedObject")
    PyUnicode_AsEncodedObject :: proc(unicode : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsEncodedString")
    PyUnicode_AsEncodedString :: proc(unicode : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsEncodedUnicode")
    PyUnicode_AsEncodedUnicode :: proc(unicode : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_BuildEncodingMap")
    PyUnicode_BuildEncodingMap :: proc(string : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUTF7")
    PyUnicode_DecodeUTF7 :: proc(string : cstring, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUTF7Stateful")
    PyUnicode_DecodeUTF7Stateful :: proc(string : cstring, length : _c.ssize_t, errors : cstring, consumed : ^_c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUTF8")
    PyUnicode_DecodeUTF8 :: proc(string : cstring, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUTF8Stateful")
    PyUnicode_DecodeUTF8Stateful :: proc(string : cstring, length : _c.ssize_t, errors : cstring, consumed : ^_c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_AsUTF8String")
    PyUnicode_AsUTF8String :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUTF32")
    PyUnicode_DecodeUTF32 :: proc(string : cstring, length : _c.ssize_t, errors : cstring, byteorder : ^_c.int) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUTF32Stateful")
    PyUnicode_DecodeUTF32Stateful :: proc(string : cstring, length : _c.ssize_t, errors : cstring, byteorder : ^_c.int, consumed : ^_c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_AsUTF32String")
    PyUnicode_AsUTF32String :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUTF16")
    PyUnicode_DecodeUTF16 :: proc(string : cstring, length : _c.ssize_t, errors : cstring, byteorder : ^_c.int) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUTF16Stateful")
    PyUnicode_DecodeUTF16Stateful :: proc(string : cstring, length : _c.ssize_t, errors : cstring, byteorder : ^_c.int, consumed : ^_c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_AsUTF16String")
    PyUnicode_AsUTF16String :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeUnicodeEscape")
    PyUnicode_DecodeUnicodeEscape :: proc(string : cstring, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsUnicodeEscapeString")
    PyUnicode_AsUnicodeEscapeString :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeRawUnicodeEscape")
    PyUnicode_DecodeRawUnicodeEscape :: proc(string : cstring, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsRawUnicodeEscapeString")
    PyUnicode_AsRawUnicodeEscapeString :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeLatin1")
    PyUnicode_DecodeLatin1 :: proc(string : cstring, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsLatin1String")
    PyUnicode_AsLatin1String :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeASCII")
    PyUnicode_DecodeASCII :: proc(string : cstring, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsASCIIString")
    PyUnicode_AsASCIIString :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeCharmap")
    PyUnicode_DecodeCharmap :: proc(string : cstring, length : _c.ssize_t, mapping : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_AsCharmapString")
    PyUnicode_AsCharmapString :: proc(unicode : ^PyObject, mapping : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeLocaleAndSize")
    PyUnicode_DecodeLocaleAndSize :: proc(str : cstring, len : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeLocale")
    PyUnicode_DecodeLocale :: proc(str : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeLocale")
    PyUnicode_EncodeLocale :: proc(unicode : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_FSConverter")
    PyUnicode_FSConverter :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int ---;

    @(link_name="PyUnicode_FSDecoder")
    PyUnicode_FSDecoder :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int ---;

    @(link_name="PyUnicode_DecodeFSDefault")
    PyUnicode_DecodeFSDefault :: proc(s : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_DecodeFSDefaultAndSize")
    PyUnicode_DecodeFSDefaultAndSize :: proc(s : cstring, size : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeFSDefault")
    PyUnicode_EncodeFSDefault :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_Concat")
    PyUnicode_Concat :: proc(left : ^PyObject, right : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_Append")
    PyUnicode_Append :: proc(pleft : ^^PyObject, right : ^PyObject) ---;

    @(link_name="PyUnicode_AppendAndDel")
    PyUnicode_AppendAndDel :: proc(pleft : ^^PyObject, right : ^PyObject) ---;

    @(link_name="PyUnicode_Split")
    PyUnicode_Split :: proc(s : ^PyObject, sep : ^PyObject, maxsplit : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_Splitlines")
    PyUnicode_Splitlines :: proc(s : ^PyObject, keepends : _c.int) -> ^PyObject ---;

    @(link_name="PyUnicode_Partition")
    PyUnicode_Partition :: proc(s : ^PyObject, sep : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_RPartition")
    PyUnicode_RPartition :: proc(s : ^PyObject, sep : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_RSplit")
    PyUnicode_RSplit :: proc(s : ^PyObject, sep : ^PyObject, maxsplit : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_Translate")
    PyUnicode_Translate :: proc(str : ^PyObject, table : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_Join")
    PyUnicode_Join :: proc(separator : ^PyObject, seq : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_Tailmatch")
    PyUnicode_Tailmatch :: proc(str : ^PyObject, substr : ^PyObject, start : _c.ssize_t, end : _c.ssize_t, direction : _c.int) -> _c.ssize_t ---;

    @(link_name="PyUnicode_Find")
    PyUnicode_Find :: proc(str : ^PyObject, substr : ^PyObject, start : _c.ssize_t, end : _c.ssize_t, direction : _c.int) -> _c.ssize_t ---;

    @(link_name="PyUnicode_FindChar")
    PyUnicode_FindChar :: proc(str : ^PyObject, ch : u32, start : _c.ssize_t, end : _c.ssize_t, direction : _c.int) -> _c.ssize_t ---;

    @(link_name="PyUnicode_Count")
    PyUnicode_Count :: proc(str : ^PyObject, substr : ^PyObject, start : _c.ssize_t, end : _c.ssize_t) -> _c.ssize_t ---;

    @(link_name="PyUnicode_Replace")
    PyUnicode_Replace :: proc(str : ^PyObject, substr : ^PyObject, replstr : ^PyObject, maxcount : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_Compare")
    PyUnicode_Compare :: proc(left : ^PyObject, right : ^PyObject) -> _c.int ---;

    @(link_name="PyUnicode_CompareWithASCIIString")
    PyUnicode_CompareWithASCIIString :: proc(left : ^PyObject, right : cstring) -> _c.int ---;

    @(link_name="PyUnicode_RichCompare")
    PyUnicode_RichCompare :: proc(left : ^PyObject, right : ^PyObject, op : _c.int) -> ^PyObject ---;

    @(link_name="PyUnicode_Format")
    PyUnicode_Format :: proc(format : ^PyObject, args : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_Contains")
    PyUnicode_Contains :: proc(container : ^PyObject, element : ^PyObject) -> _c.int ---;

    @(link_name="PyUnicode_IsIdentifier")
    PyUnicode_IsIdentifier :: proc(s : ^PyObject) -> _c.int ---;

    @(link_name="_PyUnicode_CheckConsistency")
    _PyUnicode_CheckConsistency :: proc(op : ^PyObject, check_content : _c.int) -> _c.int ---;

    @(link_name="PyUnicode_New")
    PyUnicode_New :: proc(size : _c.ssize_t, maxchar : u32) -> ^PyObject ---;

    @(link_name="_PyUnicode_Ready")
    _PyUnicode_Ready :: proc(unicode : ^PyObject) -> _c.int ---;

    @(link_name="_PyUnicode_Copy")
    _PyUnicode_Copy :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicode_CopyCharacters")
    PyUnicode_CopyCharacters :: proc(to : ^PyObject, to_start : _c.ssize_t, from : ^PyObject, from_start : _c.ssize_t, how_many : _c.ssize_t) -> _c.ssize_t ---;

    @(link_name="_PyUnicode_FastCopyCharacters")
    _PyUnicode_FastCopyCharacters :: proc(to : ^PyObject, to_start : _c.ssize_t, from : ^PyObject, from_start : _c.ssize_t, how_many : _c.ssize_t) ---;

    @(link_name="PyUnicode_Fill")
    PyUnicode_Fill :: proc(unicode : ^PyObject, start : _c.ssize_t, length : _c.ssize_t, fill_char : u32) -> _c.ssize_t ---;

    @(link_name="_PyUnicode_FastFill")
    _PyUnicode_FastFill :: proc(unicode : ^PyObject, start : _c.ssize_t, length : _c.ssize_t, fill_char : u32) ---;

    @(link_name="PyUnicode_FromUnicode")
    PyUnicode_FromUnicode :: proc(u : ^Py_UNICODE, size : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_FromKindAndData")
    PyUnicode_FromKindAndData :: proc(kind : _c.int, buffer : rawptr, size : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyUnicode_FromASCII")
    _PyUnicode_FromASCII :: proc(buffer : cstring, size : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyUnicode_FindMaxChar")
    _PyUnicode_FindMaxChar :: proc(unicode : ^PyObject, start : _c.ssize_t, end : _c.ssize_t) -> u32 ---;

    @(link_name="PyUnicode_AsUnicode")
    PyUnicode_AsUnicode :: proc(unicode : ^PyObject) -> ^Py_UNICODE ---;

    @(link_name="_PyUnicode_AsUnicode")
    _PyUnicode_AsUnicode :: proc(unicode : ^PyObject) -> ^Py_UNICODE ---;

    @(link_name="PyUnicode_AsUnicodeAndSize")
    PyUnicode_AsUnicodeAndSize :: proc(unicode : ^PyObject, size : ^_c.ssize_t) -> ^Py_UNICODE ---;

    @(link_name="PyUnicode_GetMax")
    PyUnicode_GetMax :: proc() -> Py_UNICODE ---;

    @(link_name="_PyUnicodeWriter_Init")
    _PyUnicodeWriter_Init :: proc(writer : ^_PyUnicodeWriter) ---;

    @(link_name="_PyUnicodeWriter_PrepareInternal")
    _PyUnicodeWriter_PrepareInternal :: proc(writer : ^_PyUnicodeWriter, length : _c.ssize_t, maxchar : u32) -> _c.int ---;

    @(link_name="_PyUnicodeWriter_PrepareKindInternal")
    _PyUnicodeWriter_PrepareKindInternal :: proc(writer : ^_PyUnicodeWriter, kind : PyUnicode_Kind) -> _c.int ---;

    @(link_name="_PyUnicodeWriter_WriteChar")
    _PyUnicodeWriter_WriteChar :: proc(writer : ^_PyUnicodeWriter, ch : u32) -> _c.int ---;

    @(link_name="_PyUnicodeWriter_WriteStr")
    _PyUnicodeWriter_WriteStr :: proc(writer : ^_PyUnicodeWriter, str : ^PyObject) -> _c.int ---;

    @(link_name="_PyUnicodeWriter_WriteSubstring")
    _PyUnicodeWriter_WriteSubstring :: proc(writer : ^_PyUnicodeWriter, str : ^PyObject, start : _c.ssize_t, end : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyUnicodeWriter_WriteASCIIString")
    _PyUnicodeWriter_WriteASCIIString :: proc(writer : ^_PyUnicodeWriter, str : cstring, len : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyUnicodeWriter_WriteLatin1String")
    _PyUnicodeWriter_WriteLatin1String :: proc(writer : ^_PyUnicodeWriter, str : cstring, len : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyUnicodeWriter_Finish")
    _PyUnicodeWriter_Finish :: proc(writer : ^_PyUnicodeWriter) -> ^PyObject ---;

    @(link_name="_PyUnicodeWriter_Dealloc")
    _PyUnicodeWriter_Dealloc :: proc(writer : ^_PyUnicodeWriter) ---;

    @(link_name="_PyUnicode_FormatAdvancedWriter")
    _PyUnicode_FormatAdvancedWriter :: proc(writer : ^_PyUnicodeWriter, obj : ^PyObject, format_spec : ^PyObject, start : _c.ssize_t, end : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyUnicode_AsKind")
    _PyUnicode_AsKind :: proc(s : ^PyObject, kind : _c.uint) -> rawptr ---;

    @(link_name="PyUnicode_AsUTF8AndSize")
    PyUnicode_AsUTF8AndSize :: proc(unicode : ^PyObject, size : ^_c.ssize_t) -> cstring ---;

    @(link_name="PyUnicode_AsUTF8")
    PyUnicode_AsUTF8 :: proc(unicode : ^PyObject) -> cstring ---;

    @(link_name="PyUnicode_Encode")
    PyUnicode_Encode :: proc(s : ^Py_UNICODE, size : _c.ssize_t, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeUTF7")
    PyUnicode_EncodeUTF7 :: proc(data : ^Py_UNICODE, length : _c.ssize_t, base64SetO : _c.int, base64WhiteSpace : _c.int, errors : cstring) -> ^PyObject ---;

    @(link_name="_PyUnicode_EncodeUTF7")
    _PyUnicode_EncodeUTF7 :: proc(unicode : ^PyObject, base64SetO : _c.int, base64WhiteSpace : _c.int, errors : cstring) -> ^PyObject ---;

    @(link_name="_PyUnicode_AsUTF8String")
    _PyUnicode_AsUTF8String :: proc(unicode : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeUTF8")
    PyUnicode_EncodeUTF8 :: proc(data : ^Py_UNICODE, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeUTF32")
    PyUnicode_EncodeUTF32 :: proc(data : ^Py_UNICODE, length : _c.ssize_t, errors : cstring, byteorder : _c.int) -> ^PyObject ---;

    @(link_name="_PyUnicode_EncodeUTF32")
    _PyUnicode_EncodeUTF32 :: proc(object : ^PyObject, errors : cstring, byteorder : _c.int) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeUTF16")
    PyUnicode_EncodeUTF16 :: proc(data : ^Py_UNICODE, length : _c.ssize_t, errors : cstring, byteorder : _c.int) -> ^PyObject ---;

    @(link_name="_PyUnicode_EncodeUTF16")
    _PyUnicode_EncodeUTF16 :: proc(unicode : ^PyObject, errors : cstring, byteorder : _c.int) -> ^PyObject ---;

    @(link_name="_PyUnicode_DecodeUnicodeEscape")
    _PyUnicode_DecodeUnicodeEscape :: proc(string : cstring, length : _c.ssize_t, errors : cstring, first_invalid_escape : ^cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeUnicodeEscape")
    PyUnicode_EncodeUnicodeEscape :: proc(data : ^Py_UNICODE, length : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeRawUnicodeEscape")
    PyUnicode_EncodeRawUnicodeEscape :: proc(data : ^Py_UNICODE, length : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyUnicode_AsLatin1String")
    _PyUnicode_AsLatin1String :: proc(unicode : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeLatin1")
    PyUnicode_EncodeLatin1 :: proc(data : ^Py_UNICODE, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="_PyUnicode_AsASCIIString")
    _PyUnicode_AsASCIIString :: proc(unicode : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeASCII")
    PyUnicode_EncodeASCII :: proc(data : ^Py_UNICODE, length : _c.ssize_t, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeCharmap")
    PyUnicode_EncodeCharmap :: proc(data : ^Py_UNICODE, length : _c.ssize_t, mapping : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="_PyUnicode_EncodeCharmap")
    _PyUnicode_EncodeCharmap :: proc(unicode : ^PyObject, mapping : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_TranslateCharmap")
    PyUnicode_TranslateCharmap :: proc(data : ^Py_UNICODE, length : _c.ssize_t, table : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyUnicode_EncodeDecimal")
    PyUnicode_EncodeDecimal :: proc(s : ^Py_UNICODE, length : _c.ssize_t, output : cstring, errors : cstring) -> _c.int ---;

    @(link_name="PyUnicode_TransformDecimalToASCII")
    PyUnicode_TransformDecimalToASCII :: proc(s : ^Py_UNICODE, length : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyUnicode_TransformDecimalAndSpaceToASCII")
    _PyUnicode_TransformDecimalAndSpaceToASCII :: proc(unicode : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyUnicode_JoinArray")
    _PyUnicode_JoinArray :: proc(separator : ^PyObject, items : ^^PyObject, seqlen : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyUnicode_EqualToASCIIId")
    _PyUnicode_EqualToASCIIId :: proc(left : ^PyObject, right : ^_Py_Identifier) -> _c.int ---;

    @(link_name="_PyUnicode_EqualToASCIIString")
    _PyUnicode_EqualToASCIIString :: proc(left : ^PyObject, right : cstring) -> _c.int ---;

    @(link_name="_PyUnicode_XStrip")
    _PyUnicode_XStrip :: proc(self : ^PyObject, striptype : _c.int, sepobj : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyUnicode_InsertThousandsGrouping")
    _PyUnicode_InsertThousandsGrouping :: proc(writer : ^_PyUnicodeWriter, n_buffer : _c.ssize_t, digits : ^PyObject, d_pos : _c.ssize_t, n_digits : _c.ssize_t, min_width : _c.ssize_t, grouping : cstring, thousands_sep : ^PyObject, maxchar : ^u32) -> _c.ssize_t ---;

    @(link_name="_PyUnicode_IsLowercase")
    _PyUnicode_IsLowercase :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsUppercase")
    _PyUnicode_IsUppercase :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsTitlecase")
    _PyUnicode_IsTitlecase :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsXidStart")
    _PyUnicode_IsXidStart :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsXidContinue")
    _PyUnicode_IsXidContinue :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsWhitespace")
    _PyUnicode_IsWhitespace :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsLinebreak")
    _PyUnicode_IsLinebreak :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_ToLowercase")
    _PyUnicode_ToLowercase :: proc(ch : u32) -> u32 ---;

    @(link_name="_PyUnicode_ToUppercase")
    _PyUnicode_ToUppercase :: proc(ch : u32) -> u32 ---;

    @(link_name="_PyUnicode_ToTitlecase")
    _PyUnicode_ToTitlecase :: proc(ch : u32) -> u32 ---;

    @(link_name="_PyUnicode_ToLowerFull")
    _PyUnicode_ToLowerFull :: proc(ch : u32, res : ^u32) -> _c.int ---;

    @(link_name="_PyUnicode_ToTitleFull")
    _PyUnicode_ToTitleFull :: proc(ch : u32, res : ^u32) -> _c.int ---;

    @(link_name="_PyUnicode_ToUpperFull")
    _PyUnicode_ToUpperFull :: proc(ch : u32, res : ^u32) -> _c.int ---;

    @(link_name="_PyUnicode_ToFoldedFull")
    _PyUnicode_ToFoldedFull :: proc(ch : u32, res : ^u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsCaseIgnorable")
    _PyUnicode_IsCaseIgnorable :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsCased")
    _PyUnicode_IsCased :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_ToDecimalDigit")
    _PyUnicode_ToDecimalDigit :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_ToDigit")
    _PyUnicode_ToDigit :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_ToNumeric")
    _PyUnicode_ToNumeric :: proc(ch : u32) -> _c.double ---;

    @(link_name="_PyUnicode_IsDecimalDigit")
    _PyUnicode_IsDecimalDigit :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsDigit")
    _PyUnicode_IsDigit :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsNumeric")
    _PyUnicode_IsNumeric :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsPrintable")
    _PyUnicode_IsPrintable :: proc(ch : u32) -> _c.int ---;

    @(link_name="_PyUnicode_IsAlpha")
    _PyUnicode_IsAlpha :: proc(ch : u32) -> _c.int ---;

    @(link_name="Py_UNICODE_strlen")
    Py_UNICODE_strlen :: proc(u : ^Py_UNICODE) -> _c.size_t ---;

    @(link_name="Py_UNICODE_strcpy")
    Py_UNICODE_strcpy :: proc(s1 : ^Py_UNICODE, s2 : ^Py_UNICODE) -> ^Py_UNICODE ---;

    @(link_name="Py_UNICODE_strcat")
    Py_UNICODE_strcat :: proc(s1 : ^Py_UNICODE, s2 : ^Py_UNICODE) -> ^Py_UNICODE ---;

    @(link_name="Py_UNICODE_strncpy")
    Py_UNICODE_strncpy :: proc(s1 : ^Py_UNICODE, s2 : ^Py_UNICODE, n : _c.size_t) -> ^Py_UNICODE ---;

    @(link_name="Py_UNICODE_strcmp")
    Py_UNICODE_strcmp :: proc(s1 : ^Py_UNICODE, s2 : ^Py_UNICODE) -> _c.int ---;

    @(link_name="Py_UNICODE_strncmp")
    Py_UNICODE_strncmp :: proc(s1 : ^Py_UNICODE, s2 : ^Py_UNICODE, n : _c.size_t) -> _c.int ---;

    @(link_name="Py_UNICODE_strchr")
    Py_UNICODE_strchr :: proc(s : ^Py_UNICODE, c : Py_UNICODE) -> ^Py_UNICODE ---;

    @(link_name="Py_UNICODE_strrchr")
    Py_UNICODE_strrchr :: proc(s : ^Py_UNICODE, c : Py_UNICODE) -> ^Py_UNICODE ---;

    @(link_name="_PyUnicode_FormatLong")
    _PyUnicode_FormatLong :: proc(unamed0 : ^PyObject, unamed1 : _c.int, unamed2 : _c.int, unamed3 : _c.int) -> ^PyObject ---;

    @(link_name="PyUnicode_AsUnicodeCopy")
    PyUnicode_AsUnicodeCopy :: proc(unicode : ^PyObject) -> ^Py_UNICODE ---;

    @(link_name="_PyUnicode_FromId")
    _PyUnicode_FromId :: proc(unamed0 : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PyUnicode_ClearStaticStrings")
    _PyUnicode_ClearStaticStrings :: proc() ---;

    @(link_name="_PyUnicode_EQ")
    _PyUnicode_EQ :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyLong_FromLong")
    PyLong_FromLong :: proc(unamed0 : _c.long) -> ^PyObject ---;

    @(link_name="PyLong_FromUnsignedLong")
    PyLong_FromUnsignedLong :: proc(unamed0 : _c.ulong) -> ^PyObject ---;

    @(link_name="PyLong_FromSize_t")
    PyLong_FromSize_t :: proc(unamed0 : _c.size_t) -> ^PyObject ---;

    @(link_name="PyLong_FromSsize_t")
    PyLong_FromSsize_t :: proc(unamed0 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyLong_FromDouble")
    PyLong_FromDouble :: proc(unamed0 : _c.double) -> ^PyObject ---;

    @(link_name="PyLong_AsLong")
    PyLong_AsLong :: proc(unamed0 : ^PyObject) -> _c.long ---;

    @(link_name="PyLong_AsLongAndOverflow")
    PyLong_AsLongAndOverflow :: proc(unamed0 : ^PyObject, unamed1 : ^_c.int) -> _c.long ---;

    @(link_name="PyLong_AsSsize_t")
    PyLong_AsSsize_t :: proc(unamed0 : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyLong_AsSize_t")
    PyLong_AsSize_t :: proc(unamed0 : ^PyObject) -> _c.size_t ---;

    @(link_name="PyLong_AsUnsignedLong")
    PyLong_AsUnsignedLong :: proc(unamed0 : ^PyObject) -> _c.ulong ---;

    @(link_name="PyLong_AsUnsignedLongMask")
    PyLong_AsUnsignedLongMask :: proc(unamed0 : ^PyObject) -> _c.ulong ---;

    @(link_name="_PyLong_AsInt")
    _PyLong_AsInt :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyLong_GetInfo")
    PyLong_GetInfo :: proc() -> ^PyObject ---;

    @(link_name="_PyLong_UnsignedShort_Converter")
    _PyLong_UnsignedShort_Converter :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int ---;

    @(link_name="_PyLong_UnsignedInt_Converter")
    _PyLong_UnsignedInt_Converter :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int ---;

    @(link_name="_PyLong_UnsignedLong_Converter")
    _PyLong_UnsignedLong_Converter :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int ---;

    @(link_name="_PyLong_UnsignedLongLong_Converter")
    _PyLong_UnsignedLongLong_Converter :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int ---;

    @(link_name="_PyLong_Size_t_Converter")
    _PyLong_Size_t_Converter :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int ---;

    @(link_name="_PyLong_Frexp")
    _PyLong_Frexp :: proc(a : ^PyLongObject, e : ^_c.ssize_t) -> _c.double ---;

    @(link_name="PyLong_AsDouble")
    PyLong_AsDouble :: proc(unamed0 : ^PyObject) -> _c.double ---;

    @(link_name="PyLong_FromVoidPtr")
    PyLong_FromVoidPtr :: proc(unamed0 : rawptr) -> ^PyObject ---;

    @(link_name="PyLong_AsVoidPtr")
    PyLong_AsVoidPtr :: proc(unamed0 : ^PyObject) -> rawptr ---;

    @(link_name="PyLong_FromLongLong")
    PyLong_FromLongLong :: proc(unamed0 : _c.longlong) -> ^PyObject ---;

    @(link_name="PyLong_FromUnsignedLongLong")
    PyLong_FromUnsignedLongLong :: proc(unamed0 : _c.ulonglong) -> ^PyObject ---;

    @(link_name="PyLong_AsLongLong")
    PyLong_AsLongLong :: proc(unamed0 : ^PyObject) -> _c.longlong ---;

    @(link_name="PyLong_AsUnsignedLongLong")
    PyLong_AsUnsignedLongLong :: proc(unamed0 : ^PyObject) -> _c.ulonglong ---;

    @(link_name="PyLong_AsUnsignedLongLongMask")
    PyLong_AsUnsignedLongLongMask :: proc(unamed0 : ^PyObject) -> _c.ulonglong ---;

    @(link_name="PyLong_AsLongLongAndOverflow")
    PyLong_AsLongLongAndOverflow :: proc(unamed0 : ^PyObject, unamed1 : ^_c.int) -> _c.longlong ---;

    @(link_name="PyLong_FromString")
    PyLong_FromString :: proc(unamed0 : cstring, unamed1 : ^cstring, unamed2 : _c.int) -> ^PyObject ---;

    @(link_name="PyLong_FromUnicode")
    PyLong_FromUnicode :: proc(unamed0 : ^Py_UNICODE, unamed1 : _c.ssize_t, unamed2 : _c.int) -> ^PyObject ---;

    @(link_name="PyLong_FromUnicodeObject")
    PyLong_FromUnicodeObject :: proc(u : ^PyObject, base : _c.int) -> ^PyObject ---;

    @(link_name="_PyLong_FromBytes")
    _PyLong_FromBytes :: proc(unamed0 : cstring, unamed1 : _c.ssize_t, unamed2 : _c.int) -> ^PyObject ---;

    @(link_name="_PyLong_Sign")
    _PyLong_Sign :: proc(v : ^PyObject) -> _c.int ---;

    @(link_name="_PyLong_NumBits")
    _PyLong_NumBits :: proc(v : ^PyObject) -> _c.size_t ---;

    @(link_name="_PyLong_DivmodNear")
    _PyLong_DivmodNear :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyLong_FromByteArray")
    _PyLong_FromByteArray :: proc(bytes : ^_c.uchar, n : _c.size_t, little_endian : _c.int, is_signed : _c.int) -> ^PyObject ---;

    @(link_name="_PyLong_AsByteArray")
    _PyLong_AsByteArray :: proc(v : ^PyLongObject, bytes : ^_c.uchar, n : _c.size_t, little_endian : _c.int, is_signed : _c.int) -> _c.int ---;

    @(link_name="_PyLong_FromNbInt")
    _PyLong_FromNbInt :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyLong_FromNbIndexOrNbInt")
    _PyLong_FromNbIndexOrNbInt :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyLong_Format")
    _PyLong_Format :: proc(obj : ^PyObject, base : _c.int) -> ^PyObject ---;

    @(link_name="_PyLong_FormatWriter")
    _PyLong_FormatWriter :: proc(writer : ^_PyUnicodeWriter, obj : ^PyObject, base : _c.int, alternate : _c.int) -> _c.int ---;

    @(link_name="_PyLong_FormatBytesWriter")
    _PyLong_FormatBytesWriter :: proc(writer : ^_PyBytesWriter, str : cstring, obj : ^PyObject, base : _c.int, alternate : _c.int) -> cstring ---;

    @(link_name="_PyLong_FormatAdvancedWriter")
    _PyLong_FormatAdvancedWriter :: proc(writer : ^_PyUnicodeWriter, obj : ^PyObject, format_spec : ^PyObject, start : _c.ssize_t, end : _c.ssize_t) -> _c.int ---;

    @(link_name="PyOS_strtoul")
    PyOS_strtoul :: proc(unamed0 : cstring, unamed1 : ^cstring, unamed2 : _c.int) -> _c.ulong ---;

    @(link_name="PyOS_strtol")
    PyOS_strtol :: proc(unamed0 : cstring, unamed1 : ^cstring, unamed2 : _c.int) -> _c.long ---;

    @(link_name="_PyLong_GCD")
    _PyLong_GCD :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyLong_Rshift")
    _PyLong_Rshift :: proc(unamed0 : ^PyObject, unamed1 : _c.size_t) -> ^PyObject ---;

    @(link_name="_PyLong_Lshift")
    _PyLong_Lshift :: proc(unamed0 : ^PyObject, unamed1 : _c.size_t) -> ^PyObject ---;

    @(link_name="_PyLong_New")
    _PyLong_New :: proc(unamed0 : _c.ssize_t) -> ^PyLongObject ---;

    @(link_name="_PyLong_Copy")
    _PyLong_Copy :: proc(src : ^PyLongObject) -> ^PyObject ---;

    @(link_name="PyBool_FromLong")
    PyBool_FromLong :: proc(unamed0 : _c.long) -> ^PyObject ---;

    @(link_name="PyFloat_GetMax")
    PyFloat_GetMax :: proc() -> _c.double ---;

    @(link_name="PyFloat_GetMin")
    PyFloat_GetMin :: proc() -> _c.double ---;

    @(link_name="PyFloat_GetInfo")
    PyFloat_GetInfo :: proc() -> ^PyObject ---;

    @(link_name="PyFloat_FromString")
    PyFloat_FromString :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFloat_FromDouble")
    PyFloat_FromDouble :: proc(unamed0 : _c.double) -> ^PyObject ---;

    @(link_name="PyFloat_AsDouble")
    PyFloat_AsDouble :: proc(unamed0 : ^PyObject) -> _c.double ---;

    @(link_name="_PyFloat_Pack2")
    _PyFloat_Pack2 :: proc(x : _c.double, p : ^_c.uchar, le : _c.int) -> _c.int ---;

    @(link_name="_PyFloat_Pack4")
    _PyFloat_Pack4 :: proc(x : _c.double, p : ^_c.uchar, le : _c.int) -> _c.int ---;

    @(link_name="_PyFloat_Pack8")
    _PyFloat_Pack8 :: proc(x : _c.double, p : ^_c.uchar, le : _c.int) -> _c.int ---;

    @(link_name="_PyFloat_Repr")
    _PyFloat_Repr :: proc(x : _c.double, p : cstring, len : _c.size_t) -> _c.int ---;

    @(link_name="_PyFloat_Digits")
    _PyFloat_Digits :: proc(buf : cstring, v : _c.double, signum : ^_c.int) -> _c.int ---;

    @(link_name="_PyFloat_DigitsInit")
    _PyFloat_DigitsInit :: proc() ---;

    @(link_name="_PyFloat_Unpack2")
    _PyFloat_Unpack2 :: proc(p : ^_c.uchar, le : _c.int) -> _c.double ---;

    @(link_name="_PyFloat_Unpack4")
    _PyFloat_Unpack4 :: proc(p : ^_c.uchar, le : _c.int) -> _c.double ---;

    @(link_name="_PyFloat_Unpack8")
    _PyFloat_Unpack8 :: proc(p : ^_c.uchar, le : _c.int) -> _c.double ---;

    @(link_name="PyFloat_ClearFreeList")
    PyFloat_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="_PyFloat_DebugMallocStats")
    _PyFloat_DebugMallocStats :: proc(out : ^FILE) ---;

    @(link_name="_PyFloat_FormatAdvancedWriter")
    _PyFloat_FormatAdvancedWriter :: proc(writer : ^_PyUnicodeWriter, obj : ^PyObject, format_spec : ^PyObject, start : _c.ssize_t, end : _c.ssize_t) -> _c.int ---;

    @(link_name="_Py_c_sum")
    _Py_c_sum :: proc(unamed0 : Py_complex, unamed1 : Py_complex) -> Py_complex ---;

    @(link_name="_Py_c_diff")
    _Py_c_diff :: proc(unamed0 : Py_complex, unamed1 : Py_complex) -> Py_complex ---;

    @(link_name="_Py_c_neg")
    _Py_c_neg :: proc(unamed0 : Py_complex) -> Py_complex ---;

    @(link_name="_Py_c_prod")
    _Py_c_prod :: proc(unamed0 : Py_complex, unamed1 : Py_complex) -> Py_complex ---;

    @(link_name="_Py_c_quot")
    _Py_c_quot :: proc(unamed0 : Py_complex, unamed1 : Py_complex) -> Py_complex ---;

    @(link_name="_Py_c_pow")
    _Py_c_pow :: proc(unamed0 : Py_complex, unamed1 : Py_complex) -> Py_complex ---;

    @(link_name="_Py_c_abs")
    _Py_c_abs :: proc(unamed0 : Py_complex) -> _c.double ---;

    @(link_name="PyComplex_FromCComplex")
    PyComplex_FromCComplex :: proc(unamed0 : Py_complex) -> ^PyObject ---;

    @(link_name="PyComplex_FromDoubles")
    PyComplex_FromDoubles :: proc(real : _c.double, imag : _c.double) -> ^PyObject ---;

    @(link_name="PyComplex_RealAsDouble")
    PyComplex_RealAsDouble :: proc(op : ^PyObject) -> _c.double ---;

    @(link_name="PyComplex_ImagAsDouble")
    PyComplex_ImagAsDouble :: proc(op : ^PyObject) -> _c.double ---;

    @(link_name="PyComplex_AsCComplex")
    PyComplex_AsCComplex :: proc(op : ^PyObject) -> Py_complex ---;

    @(link_name="_PyComplex_FormatAdvancedWriter")
    _PyComplex_FormatAdvancedWriter :: proc(writer : ^_PyUnicodeWriter, obj : ^PyObject, format_spec : ^PyObject, start : _c.ssize_t, end : _c.ssize_t) -> _c.int ---;

    @(link_name="PyMemoryView_FromObject")
    PyMemoryView_FromObject :: proc(base : ^PyObject) -> ^PyObject ---;

    @(link_name="PyMemoryView_FromMemory")
    PyMemoryView_FromMemory :: proc(mem : cstring, size : _c.ssize_t, flags : _c.int) -> ^PyObject ---;

    @(link_name="PyMemoryView_FromBuffer")
    PyMemoryView_FromBuffer :: proc(info : ^Py_buffer) -> ^PyObject ---;

    @(link_name="PyMemoryView_GetContiguous")
    PyMemoryView_GetContiguous :: proc(base : ^PyObject, buffertype : _c.int, order : _c.char) -> ^PyObject ---;

    @(link_name="PyTuple_New")
    PyTuple_New :: proc(size : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyTuple_Size")
    PyTuple_Size :: proc(unamed0 : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyTuple_GetItem")
    PyTuple_GetItem :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyTuple_SetItem")
    PyTuple_SetItem :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : ^PyObject) -> _c.int ---;

    @(link_name="PyTuple_GetSlice")
    PyTuple_GetSlice :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyTuple_Pack")
    PyTuple_Pack :: proc(unamed0 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyTuple_ClearFreeList")
    PyTuple_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="_PyTuple_Resize")
    _PyTuple_Resize :: proc(unamed0 : ^^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyTuple_MaybeUntrack")
    _PyTuple_MaybeUntrack :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyTuple_DebugMallocStats")
    _PyTuple_DebugMallocStats :: proc(out : ^FILE) ---;

    @(link_name="PyList_New")
    PyList_New :: proc(size : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyList_Size")
    PyList_Size :: proc(unamed0 : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyList_GetItem")
    PyList_GetItem :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyList_SetItem")
    PyList_SetItem :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : ^PyObject) -> _c.int ---;

    @(link_name="PyList_Insert")
    PyList_Insert :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : ^PyObject) -> _c.int ---;

    @(link_name="PyList_Append")
    PyList_Append :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyList_GetSlice")
    PyList_GetSlice :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyList_SetSlice")
    PyList_SetSlice :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : _c.ssize_t, unamed3 : ^PyObject) -> _c.int ---;

    @(link_name="PyList_Sort")
    PyList_Sort :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyList_Reverse")
    PyList_Reverse :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyList_AsTuple")
    PyList_AsTuple :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyList_Extend")
    _PyList_Extend :: proc(unamed0 : ^PyListObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyList_ClearFreeList")
    PyList_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="_PyList_DebugMallocStats")
    _PyList_DebugMallocStats :: proc(out : ^FILE) ---;

    @(link_name="PyDict_New")
    PyDict_New :: proc() -> ^PyObject ---;

    @(link_name="PyDict_GetItem")
    PyDict_GetItem :: proc(mp : ^PyObject, key : ^PyObject) -> ^PyObject ---;

    @(link_name="PyDict_GetItemWithError")
    PyDict_GetItemWithError :: proc(mp : ^PyObject, key : ^PyObject) -> ^PyObject ---;

    @(link_name="PyDict_SetItem")
    PyDict_SetItem :: proc(mp : ^PyObject, key : ^PyObject, item : ^PyObject) -> _c.int ---;

    @(link_name="PyDict_DelItem")
    PyDict_DelItem :: proc(mp : ^PyObject, key : ^PyObject) -> _c.int ---;

    @(link_name="PyDict_Clear")
    PyDict_Clear :: proc(mp : ^PyObject) ---;

    @(link_name="PyDict_Next")
    PyDict_Next :: proc(mp : ^PyObject, pos : ^_c.ssize_t, key : ^^PyObject, value : ^^PyObject) -> _c.int ---;

    @(link_name="PyDict_Keys")
    PyDict_Keys :: proc(mp : ^PyObject) -> ^PyObject ---;

    @(link_name="PyDict_Values")
    PyDict_Values :: proc(mp : ^PyObject) -> ^PyObject ---;

    @(link_name="PyDict_Items")
    PyDict_Items :: proc(mp : ^PyObject) -> ^PyObject ---;

    @(link_name="PyDict_Size")
    PyDict_Size :: proc(mp : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyDict_Copy")
    PyDict_Copy :: proc(mp : ^PyObject) -> ^PyObject ---;

    @(link_name="PyDict_Contains")
    PyDict_Contains :: proc(mp : ^PyObject, key : ^PyObject) -> _c.int ---;

    @(link_name="PyDict_Update")
    PyDict_Update :: proc(mp : ^PyObject, other : ^PyObject) -> _c.int ---;

    @(link_name="PyDict_Merge")
    PyDict_Merge :: proc(mp : ^PyObject, other : ^PyObject, override : _c.int) -> _c.int ---;

    @(link_name="PyDict_MergeFromSeq2")
    PyDict_MergeFromSeq2 :: proc(d : ^PyObject, seq2 : ^PyObject, override : _c.int) -> _c.int ---;

    @(link_name="PyDict_GetItemString")
    PyDict_GetItemString :: proc(dp : ^PyObject, key : cstring) -> ^PyObject ---;

    @(link_name="PyDict_SetItemString")
    PyDict_SetItemString :: proc(dp : ^PyObject, key : cstring, item : ^PyObject) -> _c.int ---;

    @(link_name="PyDict_DelItemString")
    PyDict_DelItemString :: proc(dp : ^PyObject, key : cstring) -> _c.int ---;

    @(link_name="_PyDict_GetItem_KnownHash")
    _PyDict_GetItem_KnownHash :: proc(mp : ^PyObject, key : ^PyObject, hash : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyDict_GetItemIdWithError")
    _PyDict_GetItemIdWithError :: proc(dp : ^PyObject, key : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PyDict_GetItemStringWithError")
    _PyDict_GetItemStringWithError :: proc(unamed0 : ^PyObject, unamed1 : cstring) -> ^PyObject ---;

    @(link_name="PyDict_SetDefault")
    PyDict_SetDefault :: proc(mp : ^PyObject, key : ^PyObject, defaultobj : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyDict_SetItem_KnownHash")
    _PyDict_SetItem_KnownHash :: proc(mp : ^PyObject, key : ^PyObject, item : ^PyObject, hash : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyDict_DelItem_KnownHash")
    _PyDict_DelItem_KnownHash :: proc(mp : ^PyObject, key : ^PyObject, hash : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyDict_DelItemIf")
    _PyDict_DelItemIf :: proc(mp : ^PyObject, key : ^PyObject, unamed0 : #type proc(value : ^PyObject) -> _c.int) -> _c.int ---;

    @(link_name="_PyDict_NewKeysForClass")
    _PyDict_NewKeysForClass :: proc() -> ^PyDictKeysObject ---;

    @(link_name="PyObject_GenericGetDict")
    PyObject_GenericGetDict :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> ^PyObject ---;

    @(link_name="_PyDict_Next")
    _PyDict_Next :: proc(mp : ^PyObject, pos : ^_c.ssize_t, key : ^^PyObject, value : ^^PyObject, hash : ^_c.ssize_t) -> _c.int ---;

    @(link_name="_PyDict_Contains")
    _PyDict_Contains :: proc(mp : ^PyObject, key : ^PyObject, hash : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyDict_NewPresized")
    _PyDict_NewPresized :: proc(minused : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyDict_MaybeUntrack")
    _PyDict_MaybeUntrack :: proc(mp : ^PyObject) ---;

    @(link_name="_PyDict_HasOnlyStringKeys")
    _PyDict_HasOnlyStringKeys :: proc(mp : ^PyObject) -> _c.int ---;

    @(link_name="_PyDict_KeysSize")
    _PyDict_KeysSize :: proc(keys : ^PyDictKeysObject) -> _c.ssize_t ---;

    @(link_name="_PyDict_SizeOf")
    _PyDict_SizeOf :: proc(unamed0 : ^PyDictObject) -> _c.ssize_t ---;

    @(link_name="_PyDict_Pop")
    _PyDict_Pop :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyDict_Pop_KnownHash")
    _PyDict_Pop_KnownHash :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : _c.ssize_t, unamed3 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyDict_FromKeys")
    _PyDict_FromKeys :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyDict_ClearFreeList")
    PyDict_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="_PyDict_MergeEx")
    _PyDict_MergeEx :: proc(mp : ^PyObject, other : ^PyObject, override : _c.int) -> _c.int ---;

    @(link_name="_PyDict_GetItemId")
    _PyDict_GetItemId :: proc(dp : ^PyObject, key : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PyDict_SetItemId")
    _PyDict_SetItemId :: proc(dp : ^PyObject, key : ^_Py_Identifier, item : ^PyObject) -> _c.int ---;

    @(link_name="_PyDict_DelItemId")
    _PyDict_DelItemId :: proc(mp : ^PyObject, key : ^_Py_Identifier) -> _c.int ---;

    @(link_name="_PyDict_DebugMallocStats")
    _PyDict_DebugMallocStats :: proc(out : ^FILE) ---;

    @(link_name="_PyObjectDict_SetItem")
    _PyObjectDict_SetItem :: proc(tp : ^PyTypeObject, dictptr : ^^PyObject, name : ^PyObject, value : ^PyObject) -> _c.int ---;

    @(link_name="_PyDict_LoadGlobal")
    _PyDict_LoadGlobal :: proc(unamed0 : ^PyDictObject, unamed1 : ^PyDictObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyDictView_New")
    _PyDictView_New :: proc(unamed0 : ^PyObject, unamed1 : ^PyTypeObject) -> ^PyObject ---;

    @(link_name="_PyDictView_Intersect")
    _PyDictView_Intersect :: proc(self : ^PyObject, other : ^PyObject) -> ^PyObject ---;

    @(link_name="PyODict_New")
    PyODict_New :: proc() -> ^PyObject ---;

    @(link_name="PyODict_SetItem")
    PyODict_SetItem :: proc(od : ^PyObject, key : ^PyObject, item : ^PyObject) -> _c.int ---;

    @(link_name="PyODict_DelItem")
    PyODict_DelItem :: proc(od : ^PyObject, key : ^PyObject) -> _c.int ---;

    @(link_name="_PySet_NextEntry")
    _PySet_NextEntry :: proc(set : ^PyObject, pos : ^_c.ssize_t, key : ^^PyObject, hash : ^_c.ssize_t) -> _c.int ---;

    @(link_name="_PySet_Update")
    _PySet_Update :: proc(set : ^PyObject, iterable : ^PyObject) -> _c.int ---;

    @(link_name="PySet_ClearFreeList")
    PySet_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="PySet_New")
    PySet_New :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFrozenSet_New")
    PyFrozenSet_New :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PySet_Add")
    PySet_Add :: proc(set : ^PyObject, key : ^PyObject) -> _c.int ---;

    @(link_name="PySet_Clear")
    PySet_Clear :: proc(set : ^PyObject) -> _c.int ---;

    @(link_name="PySet_Contains")
    PySet_Contains :: proc(anyset : ^PyObject, key : ^PyObject) -> _c.int ---;

    @(link_name="PySet_Discard")
    PySet_Discard :: proc(set : ^PyObject, key : ^PyObject) -> _c.int ---;

    @(link_name="PySet_Pop")
    PySet_Pop :: proc(set : ^PyObject) -> ^PyObject ---;

    @(link_name="PySet_Size")
    PySet_Size :: proc(anyset : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyCFunction_GetFunction")
    PyCFunction_GetFunction :: proc(unamed0 : ^PyObject) -> PyCFunction ---;

    @(link_name="PyCFunction_GetSelf")
    PyCFunction_GetSelf :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCFunction_GetFlags")
    PyCFunction_GetFlags :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyCFunction_Call")
    PyCFunction_Call :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyCFunction_FastCallDict")
    _PyCFunction_FastCallDict :: proc(func : ^PyObject, args : ^^PyObject, nargs : _c.ssize_t, kwargs : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCFunction_NewEx")
    PyCFunction_NewEx :: proc(unamed0 : ^PyMethodDef, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyMethodDef_RawFastCallDict")
    _PyMethodDef_RawFastCallDict :: proc(method : ^PyMethodDef, self : ^PyObject, args : ^^PyObject, nargs : _c.ssize_t, kwargs : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyMethodDef_RawFastCallKeywords")
    _PyMethodDef_RawFastCallKeywords :: proc(method : ^PyMethodDef, self : ^PyObject, args : ^^PyObject, nargs : _c.ssize_t, kwnames : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCFunction_ClearFreeList")
    PyCFunction_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="_PyCFunction_DebugMallocStats")
    _PyCFunction_DebugMallocStats :: proc(out : ^FILE) ---;

    @(link_name="_PyMethod_DebugMallocStats")
    _PyMethod_DebugMallocStats :: proc(out : ^FILE) ---;

    @(link_name="PyModule_NewObject")
    PyModule_NewObject :: proc(name : ^PyObject) -> ^PyObject ---;

    @(link_name="PyModule_New")
    PyModule_New :: proc(name : cstring) -> ^PyObject ---;

    @(link_name="PyModule_GetDict")
    PyModule_GetDict :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyModule_GetNameObject")
    PyModule_GetNameObject :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyModule_GetName")
    PyModule_GetName :: proc(unamed0 : ^PyObject) -> cstring ---;

    @(link_name="PyModule_GetFilename")
    PyModule_GetFilename :: proc(unamed0 : ^PyObject) -> cstring ---;

    @(link_name="PyModule_GetFilenameObject")
    PyModule_GetFilenameObject :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyModule_Clear")
    _PyModule_Clear :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyModule_ClearDict")
    _PyModule_ClearDict :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyModuleSpec_IsInitializing")
    _PyModuleSpec_IsInitializing :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyModule_GetDef")
    PyModule_GetDef :: proc(unamed0 : ^PyObject) -> ^PyModuleDef ---;

    @(link_name="PyModule_GetState")
    PyModule_GetState :: proc(unamed0 : ^PyObject) -> rawptr ---;

    @(link_name="PyModuleDef_Init")
    PyModuleDef_Init :: proc(unamed0 : ^PyModuleDef) -> ^PyObject ---;

    @(link_name="PyFunction_New")
    PyFunction_New :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_NewWithQualName")
    PyFunction_NewWithQualName :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_GetCode")
    PyFunction_GetCode :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_GetGlobals")
    PyFunction_GetGlobals :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_GetModule")
    PyFunction_GetModule :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_GetDefaults")
    PyFunction_GetDefaults :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_SetDefaults")
    PyFunction_SetDefaults :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyFunction_GetKwDefaults")
    PyFunction_GetKwDefaults :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_SetKwDefaults")
    PyFunction_SetKwDefaults :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyFunction_GetClosure")
    PyFunction_GetClosure :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_SetClosure")
    PyFunction_SetClosure :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyFunction_GetAnnotations")
    PyFunction_GetAnnotations :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFunction_SetAnnotations")
    PyFunction_SetAnnotations :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="_PyFunction_FastCallDict")
    _PyFunction_FastCallDict :: proc(func : ^PyObject, args : ^^PyObject, nargs : _c.ssize_t, kwargs : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyFunction_Vectorcall")
    _PyFunction_Vectorcall :: proc(func : ^PyObject, stack : ^^PyObject, nargsf : _c.size_t, kwnames : ^PyObject) -> ^PyObject ---;

    @(link_name="PyClassMethod_New")
    PyClassMethod_New :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyStaticMethod_New")
    PyStaticMethod_New :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyMethod_New")
    PyMethod_New :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyMethod_Function")
    PyMethod_Function :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyMethod_Self")
    PyMethod_Self :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyMethod_ClearFreeList")
    PyMethod_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="PyInstanceMethod_New")
    PyInstanceMethod_New :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyInstanceMethod_Function")
    PyInstanceMethod_Function :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFile_FromFd")
    PyFile_FromFd :: proc(unamed0 : _c.int, unamed1 : cstring, unamed2 : cstring, unamed3 : _c.int, unamed4 : cstring, unamed5 : cstring, unamed6 : cstring, unamed7 : _c.int) -> ^PyObject ---;

    @(link_name="PyFile_GetLine")
    PyFile_GetLine :: proc(unamed0 : ^PyObject, unamed1 : _c.int) -> ^PyObject ---;

    @(link_name="PyFile_WriteObject")
    PyFile_WriteObject :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : _c.int) -> _c.int ---;

    @(link_name="PyFile_WriteString")
    PyFile_WriteString :: proc(unamed0 : cstring, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_AsFileDescriptor")
    PyObject_AsFileDescriptor :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="Py_UniversalNewlineFgets")
    Py_UniversalNewlineFgets :: proc(unamed0 : cstring, unamed1 : _c.int, unamed2 : ^FILE, unamed3 : ^PyObject) -> cstring ---;

    @(link_name="PyFile_NewStdPrinter")
    PyFile_NewStdPrinter :: proc(unamed0 : _c.int) -> ^PyObject ---;

    @(link_name="PyFile_OpenCode")
    PyFile_OpenCode :: proc(utf8path : cstring) -> ^PyObject ---;

    @(link_name="PyFile_OpenCodeObject")
    PyFile_OpenCodeObject :: proc(path : ^PyObject) -> ^PyObject ---;

    @(link_name="PyFile_SetOpenCodeHook")
    PyFile_SetOpenCodeHook :: proc(hook : Py_OpenCodeHookFunction, userData : rawptr) -> _c.int ---;

    @(link_name="PyCapsule_New")
    PyCapsule_New :: proc(pointer : rawptr, name : cstring, destructor : PyCapsule_Destructor) -> ^PyObject ---;

    @(link_name="PyCapsule_GetPointer")
    PyCapsule_GetPointer :: proc(capsule : ^PyObject, name : cstring) -> rawptr ---;

    @(link_name="PyCapsule_GetDestructor")
    PyCapsule_GetDestructor :: proc(capsule : ^PyObject) -> PyCapsule_Destructor ---;

    @(link_name="PyCapsule_GetName")
    PyCapsule_GetName :: proc(capsule : ^PyObject) -> cstring ---;

    @(link_name="PyCapsule_GetContext")
    PyCapsule_GetContext :: proc(capsule : ^PyObject) -> rawptr ---;

    @(link_name="PyCapsule_IsValid")
    PyCapsule_IsValid :: proc(capsule : ^PyObject, name : cstring) -> _c.int ---;

    @(link_name="PyCapsule_SetPointer")
    PyCapsule_SetPointer :: proc(capsule : ^PyObject, pointer : rawptr) -> _c.int ---;

    @(link_name="PyCapsule_SetDestructor")
    PyCapsule_SetDestructor :: proc(capsule : ^PyObject, destructor : PyCapsule_Destructor) -> _c.int ---;

    @(link_name="PyCapsule_SetName")
    PyCapsule_SetName :: proc(capsule : ^PyObject, name : cstring) -> _c.int ---;

    @(link_name="PyCapsule_SetContext")
    PyCapsule_SetContext :: proc(capsule : ^PyObject, _context : rawptr) -> _c.int ---;

    @(link_name="PyCapsule_Import")
    PyCapsule_Import :: proc(name : cstring, no_block : _c.int) -> rawptr ---;

    @(link_name="PyTraceBack_Here")
    PyTraceBack_Here :: proc(unamed0 : ^_frame) -> _c.int ---;

    @(link_name="PyTraceBack_Print")
    PyTraceBack_Print :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="_Py_DisplaySourceLine")
    _Py_DisplaySourceLine :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : _c.int, unamed3 : _c.int) -> _c.int ---;

    @(link_name="_PyTraceback_Add")
    _PyTraceback_Add :: proc(unamed0 : cstring, unamed1 : cstring, unamed2 : _c.int) ---;

    @(link_name="PySlice_New")
    PySlice_New :: proc(start : ^PyObject, stop : ^PyObject, step : ^PyObject) -> ^PyObject ---;

    @(link_name="_PySlice_FromIndices")
    _PySlice_FromIndices :: proc(start : _c.ssize_t, stop : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PySlice_GetLongIndices")
    _PySlice_GetLongIndices :: proc(self : ^PySliceObject, length : ^PyObject, start_ptr : ^^PyObject, stop_ptr : ^^PyObject, step_ptr : ^^PyObject) -> _c.int ---;

    @(link_name="PySlice_GetIndices")
    PySlice_GetIndices :: proc(r : ^PyObject, length : _c.ssize_t, start : ^_c.ssize_t, stop : ^_c.ssize_t, step : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PySlice_GetIndicesEx")
    PySlice_GetIndicesEx :: proc(r : ^PyObject, length : _c.ssize_t, start : ^_c.ssize_t, stop : ^_c.ssize_t, step : ^_c.ssize_t, slicelength : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PySlice_Unpack")
    PySlice_Unpack :: proc(slice : ^PyObject, start : ^_c.ssize_t, stop : ^_c.ssize_t, step : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PySlice_AdjustIndices")
    PySlice_AdjustIndices :: proc(length : _c.ssize_t, start : ^_c.ssize_t, stop : ^_c.ssize_t, step : _c.ssize_t) -> _c.ssize_t ---;

    @(link_name="PyCell_New")
    PyCell_New :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCell_Get")
    PyCell_Get :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCell_Set")
    PyCell_Set :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PySeqIter_New")
    PySeqIter_New :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCallIter_New")
    PyCallIter_New :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyThread_init_thread")
    PyThread_init_thread :: proc() ---;

    @(link_name="PyThread_start_new_thread")
    PyThread_start_new_thread :: proc(unamed0 : #type proc(unamed0 : rawptr), unamed1 : rawptr) -> _c.ulong ---;

    @(link_name="PyThread_exit_thread")
    PyThread_exit_thread :: proc() ---;

    @(link_name="PyThread_get_thread_ident")
    PyThread_get_thread_ident :: proc() -> _c.ulong ---;

    @(link_name="PyThread_get_thread_native_id")
    PyThread_get_thread_native_id :: proc() -> _c.ulong ---;

    @(link_name="PyThread_allocate_lock")
    PyThread_allocate_lock :: proc() -> PyThread_type_lock ---;

    @(link_name="PyThread_free_lock")
    PyThread_free_lock :: proc(unamed0 : PyThread_type_lock) ---;

    @(link_name="PyThread_acquire_lock")
    PyThread_acquire_lock :: proc(unamed0 : PyThread_type_lock, unamed1 : _c.int) -> _c.int ---;

    @(link_name="PyThread_acquire_lock_timed")
    PyThread_acquire_lock_timed :: proc(unamed0 : PyThread_type_lock, microseconds : _c.longlong, intr_flag : _c.int) -> PyLockStatus ---;

    @(link_name="PyThread_release_lock")
    PyThread_release_lock :: proc(unamed0 : PyThread_type_lock) ---;

    @(link_name="PyThread_get_stacksize")
    PyThread_get_stacksize :: proc() -> _c.size_t ---;

    @(link_name="PyThread_set_stacksize")
    PyThread_set_stacksize :: proc(unamed0 : _c.size_t) -> _c.int ---;

    @(link_name="PyThread_GetInfo")
    PyThread_GetInfo :: proc() -> ^PyObject ---;

    @(link_name="PyThread_create_key")
    PyThread_create_key :: proc() -> _c.int ---;

    @(link_name="PyThread_delete_key")
    PyThread_delete_key :: proc(key : _c.int) ---;

    @(link_name="PyThread_set_key_value")
    PyThread_set_key_value :: proc(key : _c.int, value : rawptr) -> _c.int ---;

    @(link_name="PyThread_get_key_value")
    PyThread_get_key_value :: proc(key : _c.int) -> rawptr ---;

    @(link_name="PyThread_delete_key_value")
    PyThread_delete_key_value :: proc(key : _c.int) ---;

    @(link_name="PyThread_ReInitTLS")
    PyThread_ReInitTLS :: proc() ---;

    @(link_name="PyThread_tss_alloc")
    PyThread_tss_alloc :: proc() -> ^Py_tss_t ---;

    @(link_name="PyThread_tss_free")
    PyThread_tss_free :: proc(key : ^Py_tss_t) ---;

    @(link_name="PyThread_tss_is_created")
    PyThread_tss_is_created :: proc(key : ^Py_tss_t) -> _c.int ---;

    @(link_name="PyThread_tss_create")
    PyThread_tss_create :: proc(key : ^Py_tss_t) -> _c.int ---;

    @(link_name="PyThread_tss_delete")
    PyThread_tss_delete :: proc(key : ^Py_tss_t) ---;

    @(link_name="PyThread_tss_set")
    PyThread_tss_set :: proc(key : ^Py_tss_t, value : rawptr) -> _c.int ---;

    @(link_name="PyThread_tss_get")
    PyThread_tss_get :: proc(key : ^Py_tss_t) -> rawptr ---;

    @(link_name="PyInterpreterState_New")
    PyInterpreterState_New :: proc() -> ^PyInterpreterState ---;

    @(link_name="PyInterpreterState_Clear")
    PyInterpreterState_Clear :: proc(unamed0 : ^PyInterpreterState) ---;

    @(link_name="PyInterpreterState_Delete")
    PyInterpreterState_Delete :: proc(unamed0 : ^PyInterpreterState) ---;

    @(link_name="PyInterpreterState_GetDict")
    PyInterpreterState_GetDict :: proc(unamed0 : ^PyInterpreterState) -> ^PyObject ---;

    @(link_name="PyInterpreterState_GetID")
    PyInterpreterState_GetID :: proc(unamed0 : ^PyInterpreterState) -> i64 ---;

    @(link_name="PyState_AddModule")
    PyState_AddModule :: proc(unamed0 : ^PyObject, unamed1 : ^PyModuleDef) -> _c.int ---;

    @(link_name="PyState_RemoveModule")
    PyState_RemoveModule :: proc(unamed0 : ^PyModuleDef) -> _c.int ---;

    @(link_name="PyState_FindModule")
    PyState_FindModule :: proc(unamed0 : ^PyModuleDef) -> ^PyObject ---;

    @(link_name="PyThreadState_New")
    PyThreadState_New :: proc(unamed0 : ^PyInterpreterState) -> ^PyThreadState ---;

    @(link_name="PyThreadState_Clear")
    PyThreadState_Clear :: proc(unamed0 : ^PyThreadState) ---;

    @(link_name="PyThreadState_Delete")
    PyThreadState_Delete :: proc(unamed0 : ^PyThreadState) ---;

    @(link_name="PyThreadState_DeleteCurrent")
    PyThreadState_DeleteCurrent :: proc() ---;

    @(link_name="PyThreadState_Get")
    PyThreadState_Get :: proc() -> ^PyThreadState ---;

    @(link_name="PyThreadState_Swap")
    PyThreadState_Swap :: proc(unamed0 : ^PyThreadState) -> ^PyThreadState ---;

    @(link_name="PyThreadState_GetDict")
    PyThreadState_GetDict :: proc() -> ^PyObject ---;

    @(link_name="PyThreadState_SetAsyncExc")
    PyThreadState_SetAsyncExc :: proc(unamed0 : _c.ulong, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyGILState_Ensure")
    PyGILState_Ensure :: proc() -> PyGILState_STATE ---;

    @(link_name="PyGILState_Release")
    PyGILState_Release :: proc(unamed0 : PyGILState_STATE) ---;

    @(link_name="PyGILState_GetThisThreadState")
    PyGILState_GetThisThreadState :: proc() -> ^PyThreadState ---;

    @(link_name="PyStatus_Ok")
    PyStatus_Ok :: proc() -> PyStatus ---;

    @(link_name="PyStatus_Error")
    PyStatus_Error :: proc(err_msg : cstring) -> PyStatus ---;

    @(link_name="PyStatus_NoMemory")
    PyStatus_NoMemory :: proc() -> PyStatus ---;

    @(link_name="PyStatus_Exit")
    PyStatus_Exit :: proc(exitcode : _c.int) -> PyStatus ---;

    @(link_name="PyStatus_IsError")
    PyStatus_IsError :: proc(err : PyStatus) -> _c.int ---;

    @(link_name="PyStatus_IsExit")
    PyStatus_IsExit :: proc(err : PyStatus) -> _c.int ---;

    @(link_name="PyStatus_Exception")
    PyStatus_Exception :: proc(err : PyStatus) -> _c.int ---;

    @(link_name="PyWideStringList_Append")
    PyWideStringList_Append :: proc(list : ^PyWideStringList, item : ^_c.wchar_t) -> PyStatus ---;

    @(link_name="PyWideStringList_Insert")
    PyWideStringList_Insert :: proc(list : ^PyWideStringList, index : _c.ssize_t, item : ^_c.wchar_t) -> PyStatus ---;

    @(link_name="PyPreConfig_InitPythonConfig")
    PyPreConfig_InitPythonConfig :: proc(config : ^PyPreConfig) ---;

    @(link_name="PyPreConfig_InitIsolatedConfig")
    PyPreConfig_InitIsolatedConfig :: proc(config : ^PyPreConfig) ---;

    @(link_name="PyConfig_InitPythonConfig")
    PyConfig_InitPythonConfig :: proc(config : ^PyConfig) ---;

    @(link_name="PyConfig_InitIsolatedConfig")
    PyConfig_InitIsolatedConfig :: proc(config : ^PyConfig) ---;

    @(link_name="PyConfig_Clear")
    PyConfig_Clear :: proc(unamed0 : ^PyConfig) ---;

    @(link_name="PyConfig_SetString")
    PyConfig_SetString :: proc(config : ^PyConfig, config_str : ^^_c.wchar_t, str : ^_c.wchar_t) -> PyStatus ---;

    @(link_name="PyConfig_SetBytesString")
    PyConfig_SetBytesString :: proc(config : ^PyConfig, config_str : ^^_c.wchar_t, str : cstring) -> PyStatus ---;

    @(link_name="PyConfig_Read")
    PyConfig_Read :: proc(config : ^PyConfig) -> PyStatus ---;

    @(link_name="PyConfig_SetBytesArgv")
    PyConfig_SetBytesArgv :: proc(config : ^PyConfig, argc : _c.ssize_t, argv : ^cstring) -> PyStatus ---;

    @(link_name="PyConfig_SetArgv")
    PyConfig_SetArgv :: proc(config : ^PyConfig, argc : _c.ssize_t, argv : ^^_c.wchar_t) -> PyStatus ---;

    @(link_name="PyConfig_SetWideStringList")
    PyConfig_SetWideStringList :: proc(config : ^PyConfig, list : ^PyWideStringList, length : _c.ssize_t, items : ^^_c.wchar_t) -> PyStatus ---;

    @(link_name="_PyInterpreterState_RequiresIDRef")
    _PyInterpreterState_RequiresIDRef :: proc(unamed0 : ^PyInterpreterState) -> _c.int ---;

    @(link_name="_PyInterpreterState_RequireIDRef")
    _PyInterpreterState_RequireIDRef :: proc(unamed0 : ^PyInterpreterState, unamed1 : _c.int) ---;

    @(link_name="_PyInterpreterState_GetMainModule")
    _PyInterpreterState_GetMainModule :: proc(unamed0 : ^PyInterpreterState) -> ^PyObject ---;

    @(link_name="_PyInterpreterState_Get")
    _PyInterpreterState_Get :: proc() -> ^PyInterpreterState ---;

    @(link_name="_PyState_AddModule")
    _PyState_AddModule :: proc(unamed0 : ^PyObject, unamed1 : ^PyModuleDef) -> _c.int ---;

    @(link_name="_PyState_ClearModules")
    _PyState_ClearModules :: proc() ---;

    @(link_name="_PyThreadState_Prealloc")
    _PyThreadState_Prealloc :: proc(unamed0 : ^PyInterpreterState) -> ^PyThreadState ---;

    @(link_name="_PyThreadState_UncheckedGet")
    _PyThreadState_UncheckedGet :: proc() -> ^PyThreadState ---;

    @(link_name="PyGILState_Check")
    PyGILState_Check :: proc() -> _c.int ---;

    @(link_name="_PyGILState_GetInterpreterStateUnsafe")
    _PyGILState_GetInterpreterStateUnsafe :: proc() -> ^PyInterpreterState ---;

    @(link_name="_PyThread_CurrentFrames")
    _PyThread_CurrentFrames :: proc() -> ^PyObject ---;

    @(link_name="PyInterpreterState_Main")
    PyInterpreterState_Main :: proc() -> ^PyInterpreterState ---;

    @(link_name="PyInterpreterState_Head")
    PyInterpreterState_Head :: proc() -> ^PyInterpreterState ---;

    @(link_name="PyInterpreterState_Next")
    PyInterpreterState_Next :: proc(unamed0 : ^PyInterpreterState) -> ^PyInterpreterState ---;

    @(link_name="PyInterpreterState_ThreadHead")
    PyInterpreterState_ThreadHead :: proc(unamed0 : ^PyInterpreterState) -> ^PyThreadState ---;

    @(link_name="PyThreadState_Next")
    PyThreadState_Next :: proc(unamed0 : ^PyThreadState) -> ^PyThreadState ---;

    @(link_name="_PyObject_GetCrossInterpreterData")
    _PyObject_GetCrossInterpreterData :: proc(unamed0 : ^PyObject, unamed1 : ^_PyCrossInterpreterData) -> _c.int ---;

    @(link_name="_PyCrossInterpreterData_NewObject")
    _PyCrossInterpreterData_NewObject :: proc(unamed0 : ^_PyCrossInterpreterData) -> ^PyObject ---;

    @(link_name="_PyCrossInterpreterData_Release")
    _PyCrossInterpreterData_Release :: proc(unamed0 : ^_PyCrossInterpreterData) ---;

    @(link_name="_PyObject_CheckCrossInterpreterData")
    _PyObject_CheckCrossInterpreterData :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="_PyCrossInterpreterData_RegisterClass")
    _PyCrossInterpreterData_RegisterClass :: proc(unamed0 : ^PyTypeObject, unamed1 : crossinterpdatafunc) -> _c.int ---;

    @(link_name="_PyCrossInterpreterData_Lookup")
    _PyCrossInterpreterData_Lookup :: proc(unamed0 : ^PyObject) -> crossinterpdatafunc ---;

    @(link_name="PyGen_New")
    PyGen_New :: proc(unamed0 : ^_frame) -> ^PyObject ---;

    @(link_name="PyGen_NewWithQualName")
    PyGen_NewWithQualName :: proc(unamed0 : ^_frame, name : ^PyObject, qualname : ^PyObject) -> ^PyObject ---;

    @(link_name="PyGen_NeedsFinalizing")
    PyGen_NeedsFinalizing :: proc(unamed0 : ^PyGenObject) -> _c.int ---;

    @(link_name="_PyGen_SetStopIterationValue")
    _PyGen_SetStopIterationValue :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="_PyGen_FetchStopIterationValue")
    _PyGen_FetchStopIterationValue :: proc(unamed0 : ^^PyObject) -> _c.int ---;

    @(link_name="_PyGen_Send")
    _PyGen_Send :: proc(unamed0 : ^PyGenObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyGen_yf")
    _PyGen_yf :: proc(unamed0 : ^PyGenObject) -> ^PyObject ---;

    @(link_name="_PyGen_Finalize")
    _PyGen_Finalize :: proc(self : ^PyObject) ---;

    @(link_name="_PyCoro_GetAwaitableIter")
    _PyCoro_GetAwaitableIter :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCoro_New")
    PyCoro_New :: proc(unamed0 : ^_frame, name : ^PyObject, qualname : ^PyObject) -> ^PyObject ---;

    @(link_name="PyAsyncGen_New")
    PyAsyncGen_New :: proc(unamed0 : ^_frame, name : ^PyObject, qualname : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyAsyncGenValueWrapperNew")
    _PyAsyncGenValueWrapperNew :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyAsyncGen_ClearFreeLists")
    PyAsyncGen_ClearFreeLists :: proc() -> _c.int ---;

    @(link_name="PyDescr_NewMethod")
    PyDescr_NewMethod :: proc(unamed0 : ^PyTypeObject, unamed1 : ^PyMethodDef) -> ^PyObject ---;

    @(link_name="PyDescr_NewClassMethod")
    PyDescr_NewClassMethod :: proc(unamed0 : ^PyTypeObject, unamed1 : ^PyMethodDef) -> ^PyObject ---;

    @(link_name="PyDescr_NewMember")
    PyDescr_NewMember :: proc(unamed0 : ^PyTypeObject, unamed1 : ^PyMemberDef) -> ^PyObject ---;

    @(link_name="PyDescr_NewGetSet")
    PyDescr_NewGetSet :: proc(unamed0 : ^PyTypeObject, unamed1 : ^PyGetSetDef) -> ^PyObject ---;

    @(link_name="PyDescr_NewWrapper")
    PyDescr_NewWrapper :: proc(unamed0 : ^PyTypeObject, unamed1 : ^wrapperbase, unamed2 : rawptr) -> ^PyObject ---;

    @(link_name="PyDictProxy_New")
    PyDictProxy_New :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyWrapper_New")
    PyWrapper_New :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyWarnings_Init")
    _PyWarnings_Init :: proc() -> ^PyObject ---;

    @(link_name="PyErr_WarnEx")
    PyErr_WarnEx :: proc(category : ^PyObject, message : cstring, stack_level : _c.ssize_t) -> _c.int ---;

    @(link_name="PyErr_WarnFormat")
    PyErr_WarnFormat :: proc(category : ^PyObject, stack_level : _c.ssize_t, format : cstring) -> _c.int ---;

    @(link_name="PyErr_ResourceWarning")
    PyErr_ResourceWarning :: proc(source : ^PyObject, stack_level : _c.ssize_t, format : cstring) -> _c.int ---;

    @(link_name="PyErr_WarnExplicitObject")
    PyErr_WarnExplicitObject :: proc(category : ^PyObject, message : ^PyObject, filename : ^PyObject, lineno : _c.int, module : ^PyObject, registry : ^PyObject) -> _c.int ---;

    @(link_name="PyErr_WarnExplicit")
    PyErr_WarnExplicit :: proc(category : ^PyObject, message : cstring, filename : cstring, lineno : _c.int, module : cstring, registry : ^PyObject) -> _c.int ---;

    @(link_name="PyErr_WarnExplicitFormat")
    PyErr_WarnExplicitFormat :: proc(category : ^PyObject, filename : cstring, lineno : _c.int, module : cstring, registry : ^PyObject, format : cstring) -> _c.int ---;

    @(link_name="_PyErr_WarnUnawaitedCoroutine")
    _PyErr_WarnUnawaitedCoroutine :: proc(coro : ^PyObject) ---;

    @(link_name="PyWeakref_NewRef")
    PyWeakref_NewRef :: proc(ob : ^PyObject, callback : ^PyObject) -> ^PyObject ---;

    @(link_name="PyWeakref_NewProxy")
    PyWeakref_NewProxy :: proc(ob : ^PyObject, callback : ^PyObject) -> ^PyObject ---;

    @(link_name="PyWeakref_GetObject")
    PyWeakref_GetObject :: proc(ref : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyWeakref_GetWeakrefCount")
    _PyWeakref_GetWeakrefCount :: proc(head : ^PyWeakReference) -> _c.ssize_t ---;

    @(link_name="_PyWeakref_ClearRef")
    _PyWeakref_ClearRef :: proc(self : ^PyWeakReference) ---;

    @(link_name="PyStructSequence_InitType")
    PyStructSequence_InitType :: proc(type : ^PyTypeObject, desc : ^PyStructSequence_Desc) ---;

    @(link_name="PyStructSequence_InitType2")
    PyStructSequence_InitType2 :: proc(type : ^PyTypeObject, desc : ^PyStructSequence_Desc) -> _c.int ---;

    @(link_name="PyStructSequence_NewType")
    PyStructSequence_NewType :: proc(desc : ^PyStructSequence_Desc) -> ^PyTypeObject ---;

    @(link_name="PyStructSequence_New")
    PyStructSequence_New :: proc(type : ^PyTypeObject) -> ^PyObject ---;

    @(link_name="PyStructSequence_SetItem")
    PyStructSequence_SetItem :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t, unamed2 : ^PyObject) ---;

    @(link_name="PyStructSequence_GetItem")
    PyStructSequence_GetItem :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyNamespace_New")
    _PyNamespace_New :: proc(kwds : ^PyObject) -> ^PyObject ---;

    @(link_name="PyPickleBuffer_FromObject")
    PyPickleBuffer_FromObject :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyPickleBuffer_GetBuffer")
    PyPickleBuffer_GetBuffer :: proc(unamed0 : ^PyObject) -> ^Py_buffer ---;

    @(link_name="PyPickleBuffer_Release")
    PyPickleBuffer_Release :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyCodec_Register")
    PyCodec_Register :: proc(search_function : ^PyObject) -> _c.int ---;

    @(link_name="_PyCodec_Lookup")
    _PyCodec_Lookup :: proc(encoding : cstring) -> ^PyObject ---;

    @(link_name="_PyCodec_Forget")
    _PyCodec_Forget :: proc(encoding : cstring) -> _c.int ---;

    @(link_name="PyCodec_KnownEncoding")
    PyCodec_KnownEncoding :: proc(encoding : cstring) -> _c.int ---;

    @(link_name="PyCodec_Encode")
    PyCodec_Encode :: proc(object : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_Decode")
    PyCodec_Decode :: proc(object : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="_PyCodec_LookupTextEncoding")
    _PyCodec_LookupTextEncoding :: proc(encoding : cstring, alternate_command : cstring) -> ^PyObject ---;

    @(link_name="_PyCodec_EncodeText")
    _PyCodec_EncodeText :: proc(object : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="_PyCodec_DecodeText")
    _PyCodec_DecodeText :: proc(object : ^PyObject, encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="_PyCodecInfo_GetIncrementalDecoder")
    _PyCodecInfo_GetIncrementalDecoder :: proc(codec_info : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="_PyCodecInfo_GetIncrementalEncoder")
    _PyCodecInfo_GetIncrementalEncoder :: proc(codec_info : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_Encoder")
    PyCodec_Encoder :: proc(encoding : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_Decoder")
    PyCodec_Decoder :: proc(encoding : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_IncrementalEncoder")
    PyCodec_IncrementalEncoder :: proc(encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_IncrementalDecoder")
    PyCodec_IncrementalDecoder :: proc(encoding : cstring, errors : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_StreamReader")
    PyCodec_StreamReader :: proc(encoding : cstring, stream : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_StreamWriter")
    PyCodec_StreamWriter :: proc(encoding : cstring, stream : ^PyObject, errors : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_RegisterError")
    PyCodec_RegisterError :: proc(name : cstring, error : ^PyObject) -> _c.int ---;

    @(link_name="PyCodec_LookupError")
    PyCodec_LookupError :: proc(name : cstring) -> ^PyObject ---;

    @(link_name="PyCodec_StrictErrors")
    PyCodec_StrictErrors :: proc(exc : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCodec_IgnoreErrors")
    PyCodec_IgnoreErrors :: proc(exc : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCodec_ReplaceErrors")
    PyCodec_ReplaceErrors :: proc(exc : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCodec_XMLCharRefReplaceErrors")
    PyCodec_XMLCharRefReplaceErrors :: proc(exc : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCodec_BackslashReplaceErrors")
    PyCodec_BackslashReplaceErrors :: proc(exc : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCodec_NameReplaceErrors")
    PyCodec_NameReplaceErrors :: proc(exc : ^PyObject) -> ^PyObject ---;

    @(link_name="PyErr_SetNone")
    PyErr_SetNone :: proc(unamed0 : ^PyObject) ---;

    @(link_name="PyErr_SetObject")
    PyErr_SetObject :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) ---;

    @(link_name="PyErr_SetString")
    PyErr_SetString :: proc(exception : ^PyObject, string : cstring) ---;

    @(link_name="PyErr_Occurred")
    PyErr_Occurred :: proc() -> ^PyObject ---;

    @(link_name="PyErr_Clear")
    PyErr_Clear :: proc() ---;

    @(link_name="PyErr_Fetch")
    PyErr_Fetch :: proc(unamed0 : ^^PyObject, unamed1 : ^^PyObject, unamed2 : ^^PyObject) ---;

    @(link_name="PyErr_Restore")
    PyErr_Restore :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) ---;

    @(link_name="PyErr_GetExcInfo")
    PyErr_GetExcInfo :: proc(unamed0 : ^^PyObject, unamed1 : ^^PyObject, unamed2 : ^^PyObject) ---;

    @(link_name="PyErr_SetExcInfo")
    PyErr_SetExcInfo :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) ---;

    @(link_name="Py_FatalError")
    Py_FatalError :: proc(message : cstring) ---;

    @(link_name="PyErr_GivenExceptionMatches")
    PyErr_GivenExceptionMatches :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyErr_ExceptionMatches")
    PyErr_ExceptionMatches :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyErr_NormalizeException")
    PyErr_NormalizeException :: proc(unamed0 : ^^PyObject, unamed1 : ^^PyObject, unamed2 : ^^PyObject) ---;

    @(link_name="PyException_SetTraceback")
    PyException_SetTraceback :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PyException_GetTraceback")
    PyException_GetTraceback :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyException_GetCause")
    PyException_GetCause :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyException_SetCause")
    PyException_SetCause :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) ---;

    @(link_name="PyException_GetContext")
    PyException_GetContext :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyException_SetContext")
    PyException_SetContext :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) ---;

    @(link_name="PyExceptionClass_Name")
    PyExceptionClass_Name :: proc(unamed0 : ^PyObject) -> cstring ---;

    @(link_name="PyErr_BadArgument")
    PyErr_BadArgument :: proc() -> _c.int ---;

    @(link_name="PyErr_NoMemory")
    PyErr_NoMemory :: proc() -> ^PyObject ---;

    @(link_name="PyErr_SetFromErrno")
    PyErr_SetFromErrno :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyErr_SetFromErrnoWithFilenameObject")
    PyErr_SetFromErrnoWithFilenameObject :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyErr_SetFromErrnoWithFilenameObjects")
    PyErr_SetFromErrnoWithFilenameObjects :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyErr_SetFromErrnoWithFilename")
    PyErr_SetFromErrnoWithFilename :: proc(exc : ^PyObject, filename : cstring) -> ^PyObject ---;

    @(link_name="PyErr_Format")
    PyErr_Format :: proc(exception : ^PyObject, format : cstring) -> ^PyObject ---;

    @(link_name="PyErr_FormatV")
    PyErr_FormatV :: proc(exception : ^PyObject, format : cstring, vargs : va_list) -> ^PyObject ---;

    @(link_name="PyErr_SetImportErrorSubclass")
    PyErr_SetImportErrorSubclass :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject, unamed3 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyErr_SetImportError")
    PyErr_SetImportError :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyErr_BadInternalCall")
    PyErr_BadInternalCall :: proc() ---;

    @(link_name="_PyErr_BadInternalCall")
    _PyErr_BadInternalCall :: proc(filename : cstring, lineno : _c.int) ---;

    @(link_name="PyErr_NewException")
    PyErr_NewException :: proc(name : cstring, base : ^PyObject, dict : ^PyObject) -> ^PyObject ---;

    @(link_name="PyErr_NewExceptionWithDoc")
    PyErr_NewExceptionWithDoc :: proc(name : cstring, doc : cstring, base : ^PyObject, dict : ^PyObject) -> ^PyObject ---;

    @(link_name="PyErr_WriteUnraisable")
    PyErr_WriteUnraisable :: proc(unamed0 : ^PyObject) ---;

    @(link_name="PyErr_CheckSignals")
    PyErr_CheckSignals :: proc() -> _c.int ---;

    @(link_name="PyErr_SetInterrupt")
    PyErr_SetInterrupt :: proc() ---;

    @(link_name="PyErr_SyntaxLocation")
    PyErr_SyntaxLocation :: proc(filename : cstring, lineno : _c.int) ---;

    @(link_name="PyErr_SyntaxLocationEx")
    PyErr_SyntaxLocationEx :: proc(filename : cstring, lineno : _c.int, col_offset : _c.int) ---;

    @(link_name="PyErr_ProgramText")
    PyErr_ProgramText :: proc(filename : cstring, lineno : _c.int) -> ^PyObject ---;

    @(link_name="PyUnicodeDecodeError_Create")
    PyUnicodeDecodeError_Create :: proc(encoding : cstring, object : cstring, length : _c.ssize_t, start : _c.ssize_t, end : _c.ssize_t, reason : cstring) -> ^PyObject ---;

    @(link_name="PyUnicodeEncodeError_GetEncoding")
    PyUnicodeEncodeError_GetEncoding :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicodeDecodeError_GetEncoding")
    PyUnicodeDecodeError_GetEncoding :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicodeEncodeError_GetObject")
    PyUnicodeEncodeError_GetObject :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicodeDecodeError_GetObject")
    PyUnicodeDecodeError_GetObject :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicodeTranslateError_GetObject")
    PyUnicodeTranslateError_GetObject :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicodeEncodeError_GetStart")
    PyUnicodeEncodeError_GetStart :: proc(unamed0 : ^PyObject, unamed1 : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeDecodeError_GetStart")
    PyUnicodeDecodeError_GetStart :: proc(unamed0 : ^PyObject, unamed1 : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeTranslateError_GetStart")
    PyUnicodeTranslateError_GetStart :: proc(unamed0 : ^PyObject, unamed1 : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeEncodeError_SetStart")
    PyUnicodeEncodeError_SetStart :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeDecodeError_SetStart")
    PyUnicodeDecodeError_SetStart :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeTranslateError_SetStart")
    PyUnicodeTranslateError_SetStart :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeEncodeError_GetEnd")
    PyUnicodeEncodeError_GetEnd :: proc(unamed0 : ^PyObject, unamed1 : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeDecodeError_GetEnd")
    PyUnicodeDecodeError_GetEnd :: proc(unamed0 : ^PyObject, unamed1 : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeTranslateError_GetEnd")
    PyUnicodeTranslateError_GetEnd :: proc(unamed0 : ^PyObject, unamed1 : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeEncodeError_SetEnd")
    PyUnicodeEncodeError_SetEnd :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeDecodeError_SetEnd")
    PyUnicodeDecodeError_SetEnd :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeTranslateError_SetEnd")
    PyUnicodeTranslateError_SetEnd :: proc(unamed0 : ^PyObject, unamed1 : _c.ssize_t) -> _c.int ---;

    @(link_name="PyUnicodeEncodeError_GetReason")
    PyUnicodeEncodeError_GetReason :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicodeDecodeError_GetReason")
    PyUnicodeDecodeError_GetReason :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicodeTranslateError_GetReason")
    PyUnicodeTranslateError_GetReason :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyUnicodeEncodeError_SetReason")
    PyUnicodeEncodeError_SetReason :: proc(exc : ^PyObject, reason : cstring) -> _c.int ---;

    @(link_name="PyUnicodeDecodeError_SetReason")
    PyUnicodeDecodeError_SetReason :: proc(exc : ^PyObject, reason : cstring) -> _c.int ---;

    @(link_name="PyUnicodeTranslateError_SetReason")
    PyUnicodeTranslateError_SetReason :: proc(exc : ^PyObject, reason : cstring) -> _c.int ---;

    @(link_name="PyOS_snprintf")
    PyOS_snprintf :: proc(str : cstring, size : _c.size_t, format : cstring) -> _c.int ---;

    @(link_name="PyOS_vsnprintf")
    PyOS_vsnprintf :: proc(str : cstring, size : _c.size_t, format : cstring, va : va_list) -> _c.int ---;

    @(link_name="_PyErr_SetKeyError")
    _PyErr_SetKeyError :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyErr_GetTopmostException")
    _PyErr_GetTopmostException :: proc(tstate : ^PyThreadState) -> ^_PyErr_StackItem ---;

    @(link_name="_PyErr_ChainExceptions")
    _PyErr_ChainExceptions :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) ---;

    @(link_name="_PyErr_FormatFromCause")
    _PyErr_FormatFromCause :: proc(exception : ^PyObject, format : cstring) -> ^PyObject ---;

    @(link_name="_PyErr_TrySetFromCause")
    _PyErr_TrySetFromCause :: proc(prefix_format : cstring) -> ^PyObject ---;

    @(link_name="PySignal_SetWakeupFd")
    PySignal_SetWakeupFd :: proc(fd : _c.int) -> _c.int ---;

    @(link_name="_PyErr_CheckSignals")
    _PyErr_CheckSignals :: proc() -> _c.int ---;

    @(link_name="PyErr_SyntaxLocationObject")
    PyErr_SyntaxLocationObject :: proc(filename : ^PyObject, lineno : _c.int, col_offset : _c.int) ---;

    @(link_name="PyErr_ProgramTextObject")
    PyErr_ProgramTextObject :: proc(filename : ^PyObject, lineno : _c.int) -> ^PyObject ---;

    @(link_name="PyUnicodeEncodeError_Create")
    PyUnicodeEncodeError_Create :: proc(encoding : cstring, object : ^Py_UNICODE, length : _c.ssize_t, start : _c.ssize_t, end : _c.ssize_t, reason : cstring) -> ^PyObject ---;

    @(link_name="PyUnicodeTranslateError_Create")
    PyUnicodeTranslateError_Create :: proc(object : ^Py_UNICODE, length : _c.ssize_t, start : _c.ssize_t, end : _c.ssize_t, reason : cstring) -> ^PyObject ---;

    @(link_name="_PyUnicodeTranslateError_Create")
    _PyUnicodeTranslateError_Create :: proc(object : ^PyObject, start : _c.ssize_t, end : _c.ssize_t, reason : cstring) -> ^PyObject ---;

    @(link_name="_PyErr_WriteUnraisableMsg")
    _PyErr_WriteUnraisableMsg :: proc(err_msg : cstring, obj : ^PyObject) ---;

    @(link_name="PyContext_New")
    PyContext_New :: proc() -> ^PyObject ---;

    @(link_name="PyContext_Copy")
    PyContext_Copy :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyContext_CopyCurrent")
    PyContext_CopyCurrent :: proc() -> ^PyObject ---;

    @(link_name="PyContext_Enter")
    PyContext_Enter :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyContext_Exit")
    PyContext_Exit :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyContextVar_New")
    PyContextVar_New :: proc(name : cstring, default_value : ^PyObject) -> ^PyObject ---;

    @(link_name="PyContextVar_Get")
    PyContextVar_Get :: proc(var : ^PyObject, default_value : ^PyObject, value : ^^PyObject) -> _c.int ---;

    @(link_name="PyContextVar_Set")
    PyContextVar_Set :: proc(var : ^PyObject, value : ^PyObject) -> ^PyObject ---;

    @(link_name="PyContextVar_Reset")
    PyContextVar_Reset :: proc(var : ^PyObject, token : ^PyObject) -> _c.int ---;

    @(link_name="_PyContext_NewHamtForTests")
    _PyContext_NewHamtForTests :: proc() -> ^PyObject ---;

    @(link_name="PyContext_ClearFreeList")
    PyContext_ClearFreeList :: proc() -> _c.int ---;

    @(link_name="PyArena_New")
    PyArena_New :: proc() -> ^PyArena ---;

    @(link_name="PyArena_Free")
    PyArena_Free :: proc(unamed0 : ^PyArena) ---;

    @(link_name="PyArena_Malloc")
    PyArena_Malloc :: proc(unamed0 : ^PyArena, size : _c.size_t) -> rawptr ---;

    @(link_name="PyArena_AddPyObject")
    PyArena_AddPyObject :: proc(unamed0 : ^PyArena, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="_Py_VaBuildValue_SizeT")
    _Py_VaBuildValue_SizeT :: proc(unamed0 : cstring, unamed1 : va_list) -> ^PyObject ---;

    @(link_name="_Py_VaBuildStack_SizeT")
    _Py_VaBuildStack_SizeT :: proc(small_stack : ^^PyObject, small_stack_len : _c.ssize_t, format : cstring, va : va_list, p_nargs : ^_c.ssize_t) -> ^^PyObject ---;

    @(link_name="PyArg_Parse")
    PyArg_Parse :: proc(unamed0 : ^PyObject, unamed1 : cstring) -> _c.int ---;

    @(link_name="PyArg_ParseTuple")
    PyArg_ParseTuple :: proc(unamed0 : ^PyObject, unamed1 : cstring) -> _c.int ---;

    @(link_name="PyArg_ParseTupleAndKeywords")
    PyArg_ParseTupleAndKeywords :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : cstring, unamed3 : ^cstring) -> _c.int ---;

    @(link_name="PyArg_VaParse")
    PyArg_VaParse :: proc(unamed0 : ^PyObject, unamed1 : cstring, unamed2 : va_list) -> _c.int ---;

    @(link_name="PyArg_VaParseTupleAndKeywords")
    PyArg_VaParseTupleAndKeywords :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : cstring, unamed3 : ^cstring, unamed4 : va_list) -> _c.int ---;

    @(link_name="PyArg_ValidateKeywordArguments")
    PyArg_ValidateKeywordArguments :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyArg_UnpackTuple")
    PyArg_UnpackTuple :: proc(unamed0 : ^PyObject, unamed1 : cstring, unamed2 : _c.ssize_t, unamed3 : _c.ssize_t) -> _c.int ---;

    @(link_name="Py_BuildValue")
    Py_BuildValue :: proc(unamed0 : cstring) -> ^PyObject ---;

    @(link_name="_Py_BuildValue_SizeT")
    _Py_BuildValue_SizeT :: proc(unamed0 : cstring) -> ^PyObject ---;

    @(link_name="_PyArg_UnpackStack")
    _PyArg_UnpackStack :: proc(args : ^^PyObject, nargs : _c.ssize_t, name : cstring, min : _c.ssize_t, max : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyArg_NoKeywords")
    _PyArg_NoKeywords :: proc(funcname : cstring, kwargs : ^PyObject) -> _c.int ---;

    @(link_name="_PyArg_NoPositional")
    _PyArg_NoPositional :: proc(funcname : cstring, args : ^PyObject) -> _c.int ---;

    @(link_name="_PyArg_BadArgument")
    _PyArg_BadArgument :: proc(unamed0 : cstring, unamed1 : cstring, unamed2 : cstring, unamed3 : ^PyObject) ---;

    @(link_name="_PyArg_CheckPositional")
    _PyArg_CheckPositional :: proc(unamed0 : cstring, unamed1 : _c.ssize_t, unamed2 : _c.ssize_t, unamed3 : _c.ssize_t) -> _c.int ---;

    @(link_name="Py_VaBuildValue")
    Py_VaBuildValue :: proc(unamed0 : cstring, unamed1 : va_list) -> ^PyObject ---;

    @(link_name="_Py_VaBuildStack")
    _Py_VaBuildStack :: proc(small_stack : ^^PyObject, small_stack_len : _c.ssize_t, format : cstring, va : va_list, p_nargs : ^_c.ssize_t) -> ^^PyObject ---;

    @(link_name="_PyArg_ParseTupleAndKeywordsFast")
    _PyArg_ParseTupleAndKeywordsFast :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^_PyArg_Parser) -> _c.int ---;

    @(link_name="_PyArg_ParseStack")
    _PyArg_ParseStack :: proc(args : ^^PyObject, nargs : _c.ssize_t, format : cstring) -> _c.int ---;

    @(link_name="_PyArg_ParseStackAndKeywords")
    _PyArg_ParseStackAndKeywords :: proc(args : ^^PyObject, nargs : _c.ssize_t, kwnames : ^PyObject, unamed0 : ^_PyArg_Parser) -> _c.int ---;

    @(link_name="_PyArg_VaParseTupleAndKeywordsFast")
    _PyArg_VaParseTupleAndKeywordsFast :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^_PyArg_Parser, unamed3 : va_list) -> _c.int ---;

    @(link_name="_PyArg_UnpackKeywords")
    _PyArg_UnpackKeywords :: proc(args : ^^PyObject, nargs : _c.ssize_t, kwargs : ^PyObject, kwnames : ^PyObject, parser : ^_PyArg_Parser, minpos : _c.int, maxpos : _c.int, minkw : _c.int, buf : ^^PyObject) -> ^^PyObject ---;

    @(link_name="_PyArg_Fini")
    _PyArg_Fini :: proc() ---;

    @(link_name="PyModule_AddObject")
    PyModule_AddObject :: proc(unamed0 : ^PyObject, unamed1 : cstring, unamed2 : ^PyObject) -> _c.int ---;

    @(link_name="PyModule_AddIntConstant")
    PyModule_AddIntConstant :: proc(unamed0 : ^PyObject, unamed1 : cstring, unamed2 : _c.long) -> _c.int ---;

    @(link_name="PyModule_AddStringConstant")
    PyModule_AddStringConstant :: proc(unamed0 : ^PyObject, unamed1 : cstring, unamed2 : cstring) -> _c.int ---;

    @(link_name="PyModule_SetDocString")
    PyModule_SetDocString :: proc(unamed0 : ^PyObject, unamed1 : cstring) -> _c.int ---;

    @(link_name="PyModule_AddFunctions")
    PyModule_AddFunctions :: proc(unamed0 : ^PyObject, unamed1 : ^PyMethodDef) -> _c.int ---;

    @(link_name="PyModule_ExecDef")
    PyModule_ExecDef :: proc(module : ^PyObject, def : ^PyModuleDef) -> _c.int ---;

    @(link_name="PyModule_Create2")
    PyModule_Create2 :: proc(unamed0 : ^PyModuleDef, apiver : _c.int) -> ^PyObject ---;

    @(link_name="_PyModule_CreateInitialized")
    _PyModule_CreateInitialized :: proc(unamed0 : ^PyModuleDef, apiver : _c.int) -> ^PyObject ---;

    @(link_name="PyModule_FromDefAndSpec2")
    PyModule_FromDefAndSpec2 :: proc(def : ^PyModuleDef, spec : ^PyObject, module_api_version : _c.int) -> ^PyObject ---;

    @(link_name="PyCode_New")
    PyCode_New :: proc(unamed0 : _c.int, unamed1 : _c.int, unamed2 : _c.int, unamed3 : _c.int, unamed4 : _c.int, unamed5 : ^PyObject, unamed6 : ^PyObject, unamed7 : ^PyObject, unamed8 : ^PyObject, unamed9 : ^PyObject, unamed10 : ^PyObject, unamed11 : ^PyObject, unamed12 : ^PyObject, unamed13 : _c.int, unamed14 : ^PyObject) -> ^PyCodeObject ---;

    @(link_name="PyCode_NewWithPosOnlyArgs")
    PyCode_NewWithPosOnlyArgs :: proc(unamed0 : _c.int, unamed1 : _c.int, unamed2 : _c.int, unamed3 : _c.int, unamed4 : _c.int, unamed5 : _c.int, unamed6 : ^PyObject, unamed7 : ^PyObject, unamed8 : ^PyObject, unamed9 : ^PyObject, unamed10 : ^PyObject, unamed11 : ^PyObject, unamed12 : ^PyObject, unamed13 : ^PyObject, unamed14 : _c.int, unamed15 : ^PyObject) -> ^PyCodeObject ---;

    @(link_name="PyCode_NewEmpty")
    PyCode_NewEmpty :: proc(filename : cstring, funcname : cstring, firstlineno : _c.int) -> ^PyCodeObject ---;

    @(link_name="PyCode_Addr2Line")
    PyCode_Addr2Line :: proc(unamed0 : ^PyCodeObject, unamed1 : _c.int) -> _c.int ---;

    @(link_name="_PyCode_CheckLineNumber")
    _PyCode_CheckLineNumber :: proc(co : ^PyCodeObject, lasti : _c.int, bounds : ^PyAddrPair) -> _c.int ---;

    @(link_name="_PyCode_ConstantKey")
    _PyCode_ConstantKey :: proc(obj : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCode_Optimize")
    PyCode_Optimize :: proc(code : ^PyObject, consts : ^PyObject, names : ^PyObject, lnotab : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyCode_GetExtra")
    _PyCode_GetExtra :: proc(code : ^PyObject, index : _c.ssize_t, extra : ^rawptr) -> _c.int ---;

    @(link_name="_PyCode_SetExtra")
    _PyCode_SetExtra :: proc(code : ^PyObject, index : _c.ssize_t, extra : rawptr) -> _c.int ---;

    @(link_name="PyNode_Compile")
    PyNode_Compile :: proc(unamed0 : ^_node, unamed1 : cstring) -> ^PyCodeObject ---;

    @(link_name="PyAST_CompileEx")
    PyAST_CompileEx :: proc(mod : ^_mod, filename : cstring, flags : ^PyCompilerFlags, optimize : _c.int, arena : ^PyArena) -> ^PyCodeObject ---;

    @(link_name="PyAST_CompileObject")
    PyAST_CompileObject :: proc(mod : ^_mod, filename : ^PyObject, flags : ^PyCompilerFlags, optimize : _c.int, arena : ^PyArena) -> ^PyCodeObject ---;

    @(link_name="PyFuture_FromAST")
    PyFuture_FromAST :: proc(mod : ^_mod, filename : cstring) -> ^PyFutureFeatures ---;

    @(link_name="PyFuture_FromASTObject")
    PyFuture_FromASTObject :: proc(mod : ^_mod, filename : ^PyObject) -> ^PyFutureFeatures ---;

    @(link_name="_Py_Mangle")
    _Py_Mangle :: proc(p : ^PyObject, name : ^PyObject) -> ^PyObject ---;

    @(link_name="PyCompile_OpcodeStackEffect")
    PyCompile_OpcodeStackEffect :: proc(opcode : _c.int, oparg : _c.int) -> _c.int ---;

    @(link_name="PyCompile_OpcodeStackEffectWithJump")
    PyCompile_OpcodeStackEffectWithJump :: proc(opcode : _c.int, oparg : _c.int, jump : _c.int) -> _c.int ---;

    @(link_name="_PyAST_Optimize")
    _PyAST_Optimize :: proc(unamed0 : ^_mod, arena : ^PyArena, optimize : _c.int) -> _c.int ---;

    @(link_name="PyRun_SimpleStringFlags")
    PyRun_SimpleStringFlags :: proc(unamed0 : cstring, unamed1 : ^PyCompilerFlags) -> _c.int ---;

    @(link_name="PyRun_AnyFileExFlags")
    PyRun_AnyFileExFlags :: proc(fp : ^FILE, filename : cstring, closeit : _c.int, flags : ^PyCompilerFlags) -> _c.int ---;

    @(link_name="PyRun_SimpleFileExFlags")
    PyRun_SimpleFileExFlags :: proc(fp : ^FILE, filename : cstring, closeit : _c.int, flags : ^PyCompilerFlags) -> _c.int ---;

    @(link_name="PyRun_InteractiveOneFlags")
    PyRun_InteractiveOneFlags :: proc(fp : ^FILE, filename : cstring, flags : ^PyCompilerFlags) -> _c.int ---;

    @(link_name="PyRun_InteractiveOneObject")
    PyRun_InteractiveOneObject :: proc(fp : ^FILE, filename : ^PyObject, flags : ^PyCompilerFlags) -> _c.int ---;

    @(link_name="PyRun_InteractiveLoopFlags")
    PyRun_InteractiveLoopFlags :: proc(fp : ^FILE, filename : cstring, flags : ^PyCompilerFlags) -> _c.int ---;

    @(link_name="PyParser_ASTFromString")
    PyParser_ASTFromString :: proc(s : cstring, filename : cstring, start : _c.int, flags : ^PyCompilerFlags, arena : ^PyArena) -> ^_mod ---;

    @(link_name="PyParser_ASTFromStringObject")
    PyParser_ASTFromStringObject :: proc(s : cstring, filename : ^PyObject, start : _c.int, flags : ^PyCompilerFlags, arena : ^PyArena) -> ^_mod ---;

    @(link_name="PyParser_ASTFromFile")
    PyParser_ASTFromFile :: proc(fp : ^FILE, filename : cstring, enc : cstring, start : _c.int, ps1 : cstring, ps2 : cstring, flags : ^PyCompilerFlags, errcode : ^_c.int, arena : ^PyArena) -> ^_mod ---;

    @(link_name="PyParser_ASTFromFileObject")
    PyParser_ASTFromFileObject :: proc(fp : ^FILE, filename : ^PyObject, enc : cstring, start : _c.int, ps1 : cstring, ps2 : cstring, flags : ^PyCompilerFlags, errcode : ^_c.int, arena : ^PyArena) -> ^_mod ---;

    @(link_name="PyParser_SimpleParseStringFlags")
    PyParser_SimpleParseStringFlags :: proc(unamed0 : cstring, unamed1 : _c.int, unamed2 : _c.int) -> ^_node ---;

    @(link_name="PyParser_SimpleParseStringFlagsFilename")
    PyParser_SimpleParseStringFlagsFilename :: proc(unamed0 : cstring, unamed1 : cstring, unamed2 : _c.int, unamed3 : _c.int) -> ^_node ---;

    @(link_name="PyParser_SimpleParseFileFlags")
    PyParser_SimpleParseFileFlags :: proc(unamed0 : ^FILE, unamed1 : cstring, unamed2 : _c.int, unamed3 : _c.int) -> ^_node ---;

    @(link_name="PyRun_StringFlags")
    PyRun_StringFlags :: proc(unamed0 : cstring, unamed1 : _c.int, unamed2 : ^PyObject, unamed3 : ^PyObject, unamed4 : ^PyCompilerFlags) -> ^PyObject ---;

    @(link_name="PyRun_FileExFlags")
    PyRun_FileExFlags :: proc(fp : ^FILE, filename : cstring, start : _c.int, globals : ^PyObject, locals : ^PyObject, closeit : _c.int, flags : ^PyCompilerFlags) -> ^PyObject ---;

    @(link_name="Py_CompileStringExFlags")
    Py_CompileStringExFlags :: proc(str : cstring, filename : cstring, start : _c.int, flags : ^PyCompilerFlags, optimize : _c.int) -> ^PyObject ---;

    @(link_name="Py_CompileStringObject")
    Py_CompileStringObject :: proc(str : cstring, filename : ^PyObject, start : _c.int, flags : ^PyCompilerFlags, optimize : _c.int) -> ^PyObject ---;

    @(link_name="Py_SymtableString")
    Py_SymtableString :: proc(str : cstring, filename : cstring, start : _c.int) -> ^symtable ---;

    @(link_name="_Py_SourceAsString")
    _Py_SourceAsString :: proc(cmd : ^PyObject, funcname : cstring, what : cstring, cf : ^PyCompilerFlags, cmd_copy : ^^PyObject) -> cstring ---;

    @(link_name="Py_SymtableStringObject")
    Py_SymtableStringObject :: proc(str : cstring, filename : ^PyObject, start : _c.int) -> ^symtable ---;

    @(link_name="_Py_SymtableStringObjectFlags")
    _Py_SymtableStringObjectFlags :: proc(str : cstring, filename : ^PyObject, start : _c.int, flags : ^PyCompilerFlags) -> ^symtable ---;

    @(link_name="PyErr_Print")
    PyErr_Print :: proc() ---;

    @(link_name="PyErr_PrintEx")
    PyErr_PrintEx :: proc(unamed0 : _c.int) ---;

    @(link_name="PyErr_Display")
    PyErr_Display :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) ---;

    @(link_name="PyRun_String")
    PyRun_String :: proc(str : cstring, s : _c.int, g : ^PyObject, l : ^PyObject) -> ^PyObject ---;

    @(link_name="PyRun_AnyFile")
    PyRun_AnyFile :: proc(fp : ^FILE, name : cstring) -> _c.int ---;

    @(link_name="PyRun_AnyFileEx")
    PyRun_AnyFileEx :: proc(fp : ^FILE, name : cstring, closeit : _c.int) -> _c.int ---;

    @(link_name="PyRun_AnyFileFlags")
    PyRun_AnyFileFlags :: proc(unamed0 : ^FILE, unamed1 : cstring, unamed2 : ^PyCompilerFlags) -> _c.int ---;

    @(link_name="PyRun_SimpleString")
    PyRun_SimpleString :: proc(s : cstring) -> _c.int ---;

    @(link_name="PyRun_SimpleFile")
    PyRun_SimpleFile :: proc(f : ^FILE, p : cstring) -> _c.int ---;

    @(link_name="PyRun_SimpleFileEx")
    PyRun_SimpleFileEx :: proc(f : ^FILE, p : cstring, c : _c.int) -> _c.int ---;

    @(link_name="PyRun_InteractiveOne")
    PyRun_InteractiveOne :: proc(f : ^FILE, p : cstring) -> _c.int ---;

    @(link_name="PyRun_InteractiveLoop")
    PyRun_InteractiveLoop :: proc(f : ^FILE, p : cstring) -> _c.int ---;

    @(link_name="PyRun_File")
    PyRun_File :: proc(fp : ^FILE, p : cstring, s : _c.int, g : ^PyObject, l : ^PyObject) -> ^PyObject ---;

    @(link_name="PyRun_FileEx")
    PyRun_FileEx :: proc(fp : ^FILE, p : cstring, s : _c.int, g : ^PyObject, l : ^PyObject, c : _c.int) -> ^PyObject ---;

    @(link_name="PyRun_FileFlags")
    PyRun_FileFlags :: proc(fp : ^FILE, p : cstring, s : _c.int, g : ^PyObject, l : ^PyObject, flags : ^PyCompilerFlags) -> ^PyObject ---;

    @(link_name="PyOS_Readline")
    PyOS_Readline :: proc(unamed0 : ^FILE, unamed1 : ^FILE, unamed2 : cstring) -> cstring ---;

    @(link_name="Py_Initialize")
    Py_Initialize :: proc() ---;

    @(link_name="Py_InitializeEx")
    Py_InitializeEx :: proc(unamed0 : _c.int) ---;

    @(link_name="Py_Finalize")
    Py_Finalize :: proc() ---;

    @(link_name="Py_FinalizeEx")
    Py_FinalizeEx :: proc() -> _c.int ---;

    @(link_name="Py_IsInitialized")
    Py_IsInitialized :: proc() -> _c.int ---;

    @(link_name="Py_NewInterpreter")
    Py_NewInterpreter :: proc() -> ^PyThreadState ---;

    @(link_name="Py_EndInterpreter")
    Py_EndInterpreter :: proc(unamed0 : ^PyThreadState) ---;

    @(link_name="Py_AtExit")
    Py_AtExit :: proc(unamed0 : #type proc()) -> _c.int ---;

    @(link_name="Py_Exit")
    Py_Exit :: proc(unamed0 : _c.int) ---;

    @(link_name="Py_Main")
    Py_Main :: proc(argc : _c.int, argv : ^^_c.wchar_t) -> _c.int ---;

    @(link_name="Py_BytesMain")
    Py_BytesMain :: proc(argc : _c.int, argv : ^cstring) -> _c.int ---;

    @(link_name="Py_SetProgramName")
    Py_SetProgramName :: proc(unamed0 : ^_c.wchar_t) ---;

    @(link_name="Py_GetProgramName")
    Py_GetProgramName :: proc() -> ^_c.wchar_t ---;

    @(link_name="Py_SetPythonHome")
    Py_SetPythonHome :: proc(unamed0 : ^_c.wchar_t) ---;

    @(link_name="Py_GetPythonHome")
    Py_GetPythonHome :: proc() -> ^_c.wchar_t ---;

    @(link_name="Py_GetProgramFullPath")
    Py_GetProgramFullPath :: proc() -> ^_c.wchar_t ---;

    @(link_name="Py_GetPrefix")
    Py_GetPrefix :: proc() -> ^_c.wchar_t ---;

    @(link_name="Py_GetExecPrefix")
    Py_GetExecPrefix :: proc() -> ^_c.wchar_t ---;

    @(link_name="Py_GetPath")
    Py_GetPath :: proc() -> ^_c.wchar_t ---;

    @(link_name="Py_SetPath")
    Py_SetPath :: proc(unamed0 : ^_c.wchar_t) ---;

    @(link_name="Py_GetVersion")
    Py_GetVersion :: proc() -> cstring ---;

    @(link_name="Py_GetPlatform")
    Py_GetPlatform :: proc() -> cstring ---;

    @(link_name="Py_GetCopyright")
    Py_GetCopyright :: proc() -> cstring ---;

    @(link_name="Py_GetCompiler")
    Py_GetCompiler :: proc() -> cstring ---;

    @(link_name="Py_GetBuildInfo")
    Py_GetBuildInfo :: proc() -> cstring ---;

    @(link_name="PyOS_getsig")
    PyOS_getsig :: proc(unamed0 : _c.int) -> PyOS_sighandler_t ---;

    @(link_name="PyOS_setsig")
    PyOS_setsig :: proc(unamed0 : _c.int, unamed1 : PyOS_sighandler_t) -> PyOS_sighandler_t ---;

    @(link_name="Py_SetStandardStreamEncoding")
    Py_SetStandardStreamEncoding :: proc(encoding : cstring, errors : cstring) -> _c.int ---;

    @(link_name="Py_PreInitialize")
    Py_PreInitialize :: proc(src_config : ^PyPreConfig) -> PyStatus ---;

    @(link_name="Py_PreInitializeFromBytesArgs")
    Py_PreInitializeFromBytesArgs :: proc(src_config : ^PyPreConfig, argc : _c.ssize_t, argv : ^cstring) -> PyStatus ---;

    @(link_name="Py_PreInitializeFromArgs")
    Py_PreInitializeFromArgs :: proc(src_config : ^PyPreConfig, argc : _c.ssize_t, argv : ^^_c.wchar_t) -> PyStatus ---;

    @(link_name="_Py_IsCoreInitialized")
    _Py_IsCoreInitialized :: proc() -> _c.int ---;

    @(link_name="Py_InitializeFromConfig")
    Py_InitializeFromConfig :: proc(config : ^PyConfig) -> PyStatus ---;

    @(link_name="_Py_InitializeFromArgs")
    _Py_InitializeFromArgs :: proc(config : ^PyConfig, argc : _c.ssize_t, argv : ^cstring) -> PyStatus ---;

    @(link_name="_Py_InitializeFromWideArgs")
    _Py_InitializeFromWideArgs :: proc(config : ^PyConfig, argc : _c.ssize_t, argv : ^^_c.wchar_t) -> PyStatus ---;

    @(link_name="_Py_InitializeMain")
    _Py_InitializeMain :: proc() -> PyStatus ---;

    @(link_name="Py_RunMain")
    Py_RunMain :: proc() -> _c.int ---;

    @(link_name="Py_ExitStatusException")
    Py_ExitStatusException :: proc(err : PyStatus) ---;

    @(link_name="_Py_PyAtExit")
    _Py_PyAtExit :: proc(unamed0 : #type proc(unamed0 : ^PyObject), unamed1 : ^PyObject) ---;

    @(link_name="_Py_RestoreSignals")
    _Py_RestoreSignals :: proc() ---;

    @(link_name="Py_FdIsInteractive")
    Py_FdIsInteractive :: proc(unamed0 : ^FILE, unamed1 : cstring) -> _c.int ---;

    @(link_name="_Py_SetProgramFullPath")
    _Py_SetProgramFullPath :: proc(unamed0 : ^_c.wchar_t) ---;

    @(link_name="_Py_gitidentifier")
    _Py_gitidentifier :: proc() -> cstring ---;

    @(link_name="_Py_gitversion")
    _Py_gitversion :: proc() -> cstring ---;

    @(link_name="_Py_IsFinalizing")
    _Py_IsFinalizing :: proc() -> _c.int ---;

    @(link_name="_PyOS_URandom")
    _PyOS_URandom :: proc(buffer : rawptr, size : _c.ssize_t) -> _c.int ---;

    @(link_name="_PyOS_URandomNonblock")
    _PyOS_URandomNonblock :: proc(buffer : rawptr, size : _c.ssize_t) -> _c.int ---;

    @(link_name="_Py_CoerceLegacyLocale")
    _Py_CoerceLegacyLocale :: proc(warn : _c.int) -> _c.int ---;

    @(link_name="_Py_LegacyLocaleDetected")
    _Py_LegacyLocaleDetected :: proc(warn : _c.int) -> _c.int ---;

    @(link_name="_Py_SetLocaleFromEnv")
    _Py_SetLocaleFromEnv :: proc(category : _c.int) -> cstring ---;

    @(link_name="PyEval_CallObjectWithKeywords")
    PyEval_CallObjectWithKeywords :: proc(callable : ^PyObject, args : ^PyObject, kwargs : ^PyObject) -> ^PyObject ---;

    @(link_name="PyEval_CallFunction")
    PyEval_CallFunction :: proc(callable : ^PyObject, format : cstring) -> ^PyObject ---;

    @(link_name="PyEval_CallMethod")
    PyEval_CallMethod :: proc(obj : ^PyObject, name : cstring, format : cstring) -> ^PyObject ---;

    @(link_name="PyEval_SetProfile")
    PyEval_SetProfile :: proc(unamed0 : Py_tracefunc, unamed1 : ^PyObject) ---;

    @(link_name="PyEval_SetTrace")
    PyEval_SetTrace :: proc(unamed0 : Py_tracefunc, unamed1 : ^PyObject) ---;

    @(link_name="_PyEval_SetCoroutineOriginTrackingDepth")
    _PyEval_SetCoroutineOriginTrackingDepth :: proc(new_depth : _c.int) ---;

    @(link_name="_PyEval_GetCoroutineOriginTrackingDepth")
    _PyEval_GetCoroutineOriginTrackingDepth :: proc() -> _c.int ---;

    @(link_name="_PyEval_SetAsyncGenFirstiter")
    _PyEval_SetAsyncGenFirstiter :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyEval_GetAsyncGenFirstiter")
    _PyEval_GetAsyncGenFirstiter :: proc() -> ^PyObject ---;

    @(link_name="_PyEval_SetAsyncGenFinalizer")
    _PyEval_SetAsyncGenFinalizer :: proc(unamed0 : ^PyObject) ---;

    @(link_name="_PyEval_GetAsyncGenFinalizer")
    _PyEval_GetAsyncGenFinalizer :: proc() -> ^PyObject ---;

    @(link_name="PyEval_GetBuiltins")
    PyEval_GetBuiltins :: proc() -> ^PyObject ---;

    @(link_name="PyEval_GetGlobals")
    PyEval_GetGlobals :: proc() -> ^PyObject ---;

    @(link_name="PyEval_GetLocals")
    PyEval_GetLocals :: proc() -> ^PyObject ---;

    @(link_name="PyEval_GetFrame")
    PyEval_GetFrame :: proc() -> ^_frame ---;

    @(link_name="_PyEval_GetBuiltinId")
    _PyEval_GetBuiltinId :: proc(unamed0 : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="PyEval_MergeCompilerFlags")
    PyEval_MergeCompilerFlags :: proc(cf : ^PyCompilerFlags) -> _c.int ---;

    @(link_name="Py_AddPendingCall")
    Py_AddPendingCall :: proc(unamed0 : #type proc(unamed0 : rawptr) -> _c.int, arg : rawptr) -> _c.int ---;

    @(link_name="Py_MakePendingCalls")
    Py_MakePendingCalls :: proc() -> _c.int ---;

    @(link_name="Py_SetRecursionLimit")
    Py_SetRecursionLimit :: proc(unamed0 : _c.int) ---;

    @(link_name="Py_GetRecursionLimit")
    Py_GetRecursionLimit :: proc() -> _c.int ---;

    @(link_name="_Py_CheckRecursiveCall")
    _Py_CheckRecursiveCall :: proc(where_ : cstring) -> _c.int ---;

    @(link_name="PyEval_GetFuncName")
    PyEval_GetFuncName :: proc(unamed0 : ^PyObject) -> cstring ---;

    @(link_name="PyEval_GetFuncDesc")
    PyEval_GetFuncDesc :: proc(unamed0 : ^PyObject) -> cstring ---;

    @(link_name="PyEval_EvalFrame")
    PyEval_EvalFrame :: proc(unamed0 : ^_frame) -> ^PyObject ---;

    @(link_name="PyEval_EvalFrameEx")
    PyEval_EvalFrameEx :: proc(f : ^_frame, exc : _c.int) -> ^PyObject ---;

    @(link_name="_PyEval_EvalFrameDefault")
    _PyEval_EvalFrameDefault :: proc(f : ^_frame, exc : _c.int) -> ^PyObject ---;

    @(link_name="PyEval_SaveThread")
    PyEval_SaveThread :: proc() -> ^PyThreadState ---;

    @(link_name="PyEval_RestoreThread")
    PyEval_RestoreThread :: proc(unamed0 : ^PyThreadState) ---;

    @(link_name="PyEval_ThreadsInitialized")
    PyEval_ThreadsInitialized :: proc() -> _c.int ---;

    @(link_name="PyEval_InitThreads")
    PyEval_InitThreads :: proc() ---;

    @(link_name="PyEval_AcquireLock")
    PyEval_AcquireLock :: proc() ---;

    @(link_name="PyEval_ReleaseLock")
    PyEval_ReleaseLock :: proc() ---;

    @(link_name="PyEval_AcquireThread")
    PyEval_AcquireThread :: proc(tstate : ^PyThreadState) ---;

    @(link_name="PyEval_ReleaseThread")
    PyEval_ReleaseThread :: proc(tstate : ^PyThreadState) ---;

    @(link_name="_PyEval_SetSwitchInterval")
    _PyEval_SetSwitchInterval :: proc(microseconds : _c.ulong) ---;

    @(link_name="_PyEval_GetSwitchInterval")
    _PyEval_GetSwitchInterval :: proc() -> _c.ulong ---;

    @(link_name="_PyEval_RequestCodeExtraIndex")
    _PyEval_RequestCodeExtraIndex :: proc(unamed0 : freefunc) -> _c.ssize_t ---;

    @(link_name="_PyEval_SliceIndex")
    _PyEval_SliceIndex :: proc(unamed0 : ^PyObject, unamed1 : ^_c.ssize_t) -> _c.int ---;

    @(link_name="_PyEval_SliceIndexNotNone")
    _PyEval_SliceIndexNotNone :: proc(unamed0 : ^PyObject, unamed1 : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PySys_GetObject")
    PySys_GetObject :: proc(unamed0 : cstring) -> ^PyObject ---;

    @(link_name="PySys_SetObject")
    PySys_SetObject :: proc(unamed0 : cstring, unamed1 : ^PyObject) -> _c.int ---;

    @(link_name="PySys_SetArgv")
    PySys_SetArgv :: proc(unamed0 : _c.int, unamed1 : ^^_c.wchar_t) ---;

    @(link_name="PySys_SetArgvEx")
    PySys_SetArgvEx :: proc(unamed0 : _c.int, unamed1 : ^^_c.wchar_t, unamed2 : _c.int) ---;

    @(link_name="PySys_SetPath")
    PySys_SetPath :: proc(unamed0 : ^_c.wchar_t) ---;

    @(link_name="PySys_WriteStdout")
    PySys_WriteStdout :: proc(format : cstring) ---;

    @(link_name="PySys_WriteStderr")
    PySys_WriteStderr :: proc(format : cstring) ---;

    @(link_name="PySys_FormatStdout")
    PySys_FormatStdout :: proc(format : cstring) ---;

    @(link_name="PySys_FormatStderr")
    PySys_FormatStderr :: proc(format : cstring) ---;

    @(link_name="PySys_ResetWarnOptions")
    PySys_ResetWarnOptions :: proc() ---;

    @(link_name="PySys_AddWarnOption")
    PySys_AddWarnOption :: proc(unamed0 : ^_c.wchar_t) ---;

    @(link_name="PySys_AddWarnOptionUnicode")
    PySys_AddWarnOptionUnicode :: proc(unamed0 : ^PyObject) ---;

    @(link_name="PySys_HasWarnOptions")
    PySys_HasWarnOptions :: proc() -> _c.int ---;

    @(link_name="PySys_AddXOption")
    PySys_AddXOption :: proc(unamed0 : ^_c.wchar_t) ---;

    @(link_name="PySys_GetXOptions")
    PySys_GetXOptions :: proc() -> ^PyObject ---;

    @(link_name="_PySys_GetObjectId")
    _PySys_GetObjectId :: proc(key : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PySys_SetObjectId")
    _PySys_SetObjectId :: proc(key : ^_Py_Identifier, unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="_PySys_GetSizeOf")
    _PySys_GetSizeOf :: proc(unamed0 : ^PyObject) -> _c.size_t ---;

    @(link_name="PySys_Audit")
    PySys_Audit :: proc(unamed0 : cstring, unamed1 : cstring) -> _c.int ---;

    @(link_name="PySys_AddAuditHook")
    PySys_AddAuditHook :: proc(unamed0 : Py_AuditHookFunction, unamed1 : rawptr) -> _c.int ---;

    @(link_name="PyOS_FSPath")
    PyOS_FSPath :: proc(path : ^PyObject) -> ^PyObject ---;

    @(link_name="PyOS_InterruptOccurred")
    PyOS_InterruptOccurred :: proc() -> _c.int ---;

    @(link_name="PyOS_InitInterrupts")
    PyOS_InitInterrupts :: proc() ---;

    @(link_name="PyOS_BeforeFork")
    PyOS_BeforeFork :: proc() ---;

    @(link_name="PyOS_AfterFork_Parent")
    PyOS_AfterFork_Parent :: proc() ---;

    @(link_name="PyOS_AfterFork_Child")
    PyOS_AfterFork_Child :: proc() ---;

    @(link_name="PyOS_AfterFork")
    PyOS_AfterFork :: proc() ---;

    @(link_name="_PyOS_IsMainThread")
    _PyOS_IsMainThread :: proc() -> _c.int ---;

    @(link_name="_PySignal_AfterFork")
    _PySignal_AfterFork :: proc() ---;

    @(link_name="PyInit__imp")
    PyInit__imp :: proc() -> ^PyObject ---;

    @(link_name="PyImport_GetMagicNumber")
    PyImport_GetMagicNumber :: proc() -> _c.long ---;

    @(link_name="PyImport_GetMagicTag")
    PyImport_GetMagicTag :: proc() -> cstring ---;

    @(link_name="PyImport_ExecCodeModule")
    PyImport_ExecCodeModule :: proc(name : cstring, co : ^PyObject) -> ^PyObject ---;

    @(link_name="PyImport_ExecCodeModuleEx")
    PyImport_ExecCodeModuleEx :: proc(name : cstring, co : ^PyObject, pathname : cstring) -> ^PyObject ---;

    @(link_name="PyImport_ExecCodeModuleWithPathnames")
    PyImport_ExecCodeModuleWithPathnames :: proc(name : cstring, co : ^PyObject, pathname : cstring, cpathname : cstring) -> ^PyObject ---;

    @(link_name="PyImport_ExecCodeModuleObject")
    PyImport_ExecCodeModuleObject :: proc(name : ^PyObject, co : ^PyObject, pathname : ^PyObject, cpathname : ^PyObject) -> ^PyObject ---;

    @(link_name="PyImport_GetModuleDict")
    PyImport_GetModuleDict :: proc() -> ^PyObject ---;

    @(link_name="PyImport_GetModule")
    PyImport_GetModule :: proc(name : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyImport_IsInitialized")
    _PyImport_IsInitialized :: proc(unamed0 : ^PyInterpreterState) -> _c.int ---;

    @(link_name="_PyImport_GetModuleId")
    _PyImport_GetModuleId :: proc(name : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PyImport_AddModuleObject")
    _PyImport_AddModuleObject :: proc(name : ^PyObject, modules : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyImport_SetModule")
    _PyImport_SetModule :: proc(name : ^PyObject, module : ^PyObject) -> _c.int ---;

    @(link_name="_PyImport_SetModuleString")
    _PyImport_SetModuleString :: proc(name : cstring, module : ^PyObject) -> _c.int ---;

    @(link_name="PyImport_AddModuleObject")
    PyImport_AddModuleObject :: proc(name : ^PyObject) -> ^PyObject ---;

    @(link_name="PyImport_AddModule")
    PyImport_AddModule :: proc(name : cstring) -> ^PyObject ---;

    @(link_name="PyImport_ImportModule")
    PyImport_ImportModule :: proc(name : cstring) -> ^PyObject ---;

    @(link_name="PyImport_ImportModuleNoBlock")
    PyImport_ImportModuleNoBlock :: proc(name : cstring) -> ^PyObject ---;

    @(link_name="PyImport_ImportModuleLevel")
    PyImport_ImportModuleLevel :: proc(name : cstring, globals : ^PyObject, locals : ^PyObject, fromlist : ^PyObject, level : _c.int) -> ^PyObject ---;

    @(link_name="PyImport_ImportModuleLevelObject")
    PyImport_ImportModuleLevelObject :: proc(name : ^PyObject, globals : ^PyObject, locals : ^PyObject, fromlist : ^PyObject, level : _c.int) -> ^PyObject ---;

    @(link_name="PyImport_GetImporter")
    PyImport_GetImporter :: proc(path : ^PyObject) -> ^PyObject ---;

    @(link_name="PyImport_Import")
    PyImport_Import :: proc(name : ^PyObject) -> ^PyObject ---;

    @(link_name="PyImport_ReloadModule")
    PyImport_ReloadModule :: proc(m : ^PyObject) -> ^PyObject ---;

    @(link_name="PyImport_Cleanup")
    PyImport_Cleanup :: proc() ---;

    @(link_name="PyImport_ImportFrozenModuleObject")
    PyImport_ImportFrozenModuleObject :: proc(name : ^PyObject) -> _c.int ---;

    @(link_name="PyImport_ImportFrozenModule")
    PyImport_ImportFrozenModule :: proc(name : cstring) -> _c.int ---;

    @(link_name="_PyImport_AcquireLock")
    _PyImport_AcquireLock :: proc() ---;

    @(link_name="_PyImport_ReleaseLock")
    _PyImport_ReleaseLock :: proc() -> _c.int ---;

    @(link_name="_PyImport_ReInitLock")
    _PyImport_ReInitLock :: proc() ---;

    @(link_name="_PyImport_FindBuiltin")
    _PyImport_FindBuiltin :: proc(name : cstring, modules : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyImport_FindExtensionObject")
    _PyImport_FindExtensionObject :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyImport_FindExtensionObjectEx")
    _PyImport_FindExtensionObjectEx :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyImport_FixupBuiltin")
    _PyImport_FixupBuiltin :: proc(mod : ^PyObject, name : cstring, modules : ^PyObject) -> _c.int ---;

    @(link_name="_PyImport_FixupExtensionObject")
    _PyImport_FixupExtensionObject :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject, unamed3 : ^PyObject) -> _c.int ---;

    @(link_name="PyImport_ExtendInittab")
    PyImport_ExtendInittab :: proc(newtab : ^_inittab) -> _c.int ---;

    @(link_name="PyImport_AppendInittab")
    PyImport_AppendInittab :: proc(name : cstring, unamed0 : #type proc() -> ^PyObject) -> _c.int ---;

    @(link_name="PyObject_Call")
    PyObject_Call :: proc(callable : ^PyObject, args : ^PyObject, kwargs : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_CallObject")
    PyObject_CallObject :: proc(callable : ^PyObject, args : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_CallFunction")
    PyObject_CallFunction :: proc(callable : ^PyObject, format : cstring) -> ^PyObject ---;

    @(link_name="PyObject_CallMethod")
    PyObject_CallMethod :: proc(obj : ^PyObject, name : cstring, format : cstring) -> ^PyObject ---;

    @(link_name="_PyObject_CallFunction_SizeT")
    _PyObject_CallFunction_SizeT :: proc(callable : ^PyObject, format : cstring) -> ^PyObject ---;

    @(link_name="_PyObject_CallMethod_SizeT")
    _PyObject_CallMethod_SizeT :: proc(obj : ^PyObject, name : cstring, format : cstring) -> ^PyObject ---;

    @(link_name="PyObject_CallFunctionObjArgs")
    PyObject_CallFunctionObjArgs :: proc(callable : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_CallMethodObjArgs")
    PyObject_CallMethodObjArgs :: proc(obj : ^PyObject, name : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_Type")
    PyObject_Type :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_Size")
    PyObject_Size :: proc(o : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyObject_Length")
    PyObject_Length :: proc(o : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyObject_GetItem")
    PyObject_GetItem :: proc(o : ^PyObject, key : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_SetItem")
    PyObject_SetItem :: proc(o : ^PyObject, key : ^PyObject, v : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_DelItemString")
    PyObject_DelItemString :: proc(o : ^PyObject, key : cstring) -> _c.int ---;

    @(link_name="PyObject_DelItem")
    PyObject_DelItem :: proc(o : ^PyObject, key : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_AsCharBuffer")
    PyObject_AsCharBuffer :: proc(obj : ^PyObject, buffer : ^cstring, buffer_len : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyObject_CheckReadBuffer")
    PyObject_CheckReadBuffer :: proc(obj : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_AsReadBuffer")
    PyObject_AsReadBuffer :: proc(obj : ^PyObject, buffer : ^rawptr, buffer_len : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyObject_AsWriteBuffer")
    PyObject_AsWriteBuffer :: proc(obj : ^PyObject, buffer : ^rawptr, buffer_len : ^_c.ssize_t) -> _c.int ---;

    @(link_name="PyObject_Format")
    PyObject_Format :: proc(obj : ^PyObject, format_spec : ^PyObject) -> ^PyObject ---;

    @(link_name="PyObject_GetIter")
    PyObject_GetIter :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyIter_Check")
    PyIter_Check :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyIter_Next")
    PyIter_Next :: proc(unamed0 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Check")
    PyNumber_Check :: proc(o : ^PyObject) -> _c.int ---;

    @(link_name="PyNumber_Add")
    PyNumber_Add :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Subtract")
    PyNumber_Subtract :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Multiply")
    PyNumber_Multiply :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_MatrixMultiply")
    PyNumber_MatrixMultiply :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_FloorDivide")
    PyNumber_FloorDivide :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_TrueDivide")
    PyNumber_TrueDivide :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Remainder")
    PyNumber_Remainder :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Divmod")
    PyNumber_Divmod :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Power")
    PyNumber_Power :: proc(o1 : ^PyObject, o2 : ^PyObject, o3 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Negative")
    PyNumber_Negative :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Positive")
    PyNumber_Positive :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Absolute")
    PyNumber_Absolute :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Invert")
    PyNumber_Invert :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Lshift")
    PyNumber_Lshift :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Rshift")
    PyNumber_Rshift :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_And")
    PyNumber_And :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Xor")
    PyNumber_Xor :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Or")
    PyNumber_Or :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyIndex_Check")
    PyIndex_Check :: proc(unamed0 : ^PyObject) -> _c.int ---;

    @(link_name="PyNumber_Index")
    PyNumber_Index :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_AsSsize_t")
    PyNumber_AsSsize_t :: proc(o : ^PyObject, exc : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyNumber_Long")
    PyNumber_Long :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_Float")
    PyNumber_Float :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceAdd")
    PyNumber_InPlaceAdd :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceSubtract")
    PyNumber_InPlaceSubtract :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceMultiply")
    PyNumber_InPlaceMultiply :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceMatrixMultiply")
    PyNumber_InPlaceMatrixMultiply :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceFloorDivide")
    PyNumber_InPlaceFloorDivide :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceTrueDivide")
    PyNumber_InPlaceTrueDivide :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceRemainder")
    PyNumber_InPlaceRemainder :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlacePower")
    PyNumber_InPlacePower :: proc(o1 : ^PyObject, o2 : ^PyObject, o3 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceLshift")
    PyNumber_InPlaceLshift :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceRshift")
    PyNumber_InPlaceRshift :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceAnd")
    PyNumber_InPlaceAnd :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceXor")
    PyNumber_InPlaceXor :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_InPlaceOr")
    PyNumber_InPlaceOr :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyNumber_ToBase")
    PyNumber_ToBase :: proc(n : ^PyObject, base : _c.int) -> ^PyObject ---;

    @(link_name="PySequence_Check")
    PySequence_Check :: proc(o : ^PyObject) -> _c.int ---;

    @(link_name="PySequence_Size")
    PySequence_Size :: proc(o : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PySequence_Length")
    PySequence_Length :: proc(o : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PySequence_Concat")
    PySequence_Concat :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PySequence_Repeat")
    PySequence_Repeat :: proc(o : ^PyObject, count : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PySequence_GetItem")
    PySequence_GetItem :: proc(o : ^PyObject, i : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PySequence_GetSlice")
    PySequence_GetSlice :: proc(o : ^PyObject, i1 : _c.ssize_t, i2 : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PySequence_SetItem")
    PySequence_SetItem :: proc(o : ^PyObject, i : _c.ssize_t, v : ^PyObject) -> _c.int ---;

    @(link_name="PySequence_DelItem")
    PySequence_DelItem :: proc(o : ^PyObject, i : _c.ssize_t) -> _c.int ---;

    @(link_name="PySequence_SetSlice")
    PySequence_SetSlice :: proc(o : ^PyObject, i1 : _c.ssize_t, i2 : _c.ssize_t, v : ^PyObject) -> _c.int ---;

    @(link_name="PySequence_DelSlice")
    PySequence_DelSlice :: proc(o : ^PyObject, i1 : _c.ssize_t, i2 : _c.ssize_t) -> _c.int ---;

    @(link_name="PySequence_Tuple")
    PySequence_Tuple :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PySequence_List")
    PySequence_List :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PySequence_Fast")
    PySequence_Fast :: proc(o : ^PyObject, m : cstring) -> ^PyObject ---;

    @(link_name="PySequence_Count")
    PySequence_Count :: proc(o : ^PyObject, value : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PySequence_Contains")
    PySequence_Contains :: proc(seq : ^PyObject, ob : ^PyObject) -> _c.int ---;

    @(link_name="PySequence_In")
    PySequence_In :: proc(o : ^PyObject, value : ^PyObject) -> _c.int ---;

    @(link_name="PySequence_Index")
    PySequence_Index :: proc(o : ^PyObject, value : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PySequence_InPlaceConcat")
    PySequence_InPlaceConcat :: proc(o1 : ^PyObject, o2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PySequence_InPlaceRepeat")
    PySequence_InPlaceRepeat :: proc(o : ^PyObject, count : _c.ssize_t) -> ^PyObject ---;

    @(link_name="PyMapping_Check")
    PyMapping_Check :: proc(o : ^PyObject) -> _c.int ---;

    @(link_name="PyMapping_Size")
    PyMapping_Size :: proc(o : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyMapping_Length")
    PyMapping_Length :: proc(o : ^PyObject) -> _c.ssize_t ---;

    @(link_name="PyMapping_HasKeyString")
    PyMapping_HasKeyString :: proc(o : ^PyObject, key : cstring) -> _c.int ---;

    @(link_name="PyMapping_HasKey")
    PyMapping_HasKey :: proc(o : ^PyObject, key : ^PyObject) -> _c.int ---;

    @(link_name="PyMapping_Keys")
    PyMapping_Keys :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyMapping_Values")
    PyMapping_Values :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyMapping_Items")
    PyMapping_Items :: proc(o : ^PyObject) -> ^PyObject ---;

    @(link_name="PyMapping_GetItemString")
    PyMapping_GetItemString :: proc(o : ^PyObject, key : cstring) -> ^PyObject ---;

    @(link_name="PyMapping_SetItemString")
    PyMapping_SetItemString :: proc(o : ^PyObject, key : cstring, value : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_IsInstance")
    PyObject_IsInstance :: proc(object : ^PyObject, typeorclass : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_IsSubclass")
    PyObject_IsSubclass :: proc(object : ^PyObject, typeorclass : ^PyObject) -> _c.int ---;

    @(link_name="_PyStack_AsDict")
    _PyStack_AsDict :: proc(values : ^^PyObject, kwnames : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyStack_UnpackDict")
    _PyStack_UnpackDict :: proc(args : ^^PyObject, nargs : _c.ssize_t, kwargs : ^PyObject, p_stack : ^^^PyObject, p_kwnames : ^^PyObject) -> _c.int ---;

    @(link_name="_Py_CheckFunctionResult")
    _Py_CheckFunctionResult :: proc(callable : ^PyObject, result : ^PyObject, where_ : cstring) -> ^PyObject ---;

    @(link_name="_PyObject_MakeTpCall")
    _PyObject_MakeTpCall :: proc(callable : ^PyObject, args : ^^PyObject, nargs : _c.ssize_t, keywords : ^PyObject) -> ^PyObject ---;

    @(link_name="PyVectorcall_NARGS")
    PyVectorcall_NARGS :: proc(n : _c.size_t) -> _c.ssize_t ---;

    @(link_name="_PyVectorcall_Function")
    _PyVectorcall_Function :: proc(callable : ^PyObject) -> vectorcallfunc ---;

    @(link_name="_PyObject_Vectorcall")
    _PyObject_Vectorcall :: proc(callable : ^PyObject, args : ^^PyObject, nargsf : _c.size_t, kwnames : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyObject_FastCallDict")
    _PyObject_FastCallDict :: proc(callable : ^PyObject, args : ^^PyObject, nargsf : _c.size_t, kwargs : ^PyObject) -> ^PyObject ---;

    @(link_name="PyVectorcall_Call")
    PyVectorcall_Call :: proc(callable : ^PyObject, tuple : ^PyObject, dict : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyObject_FastCall")
    _PyObject_FastCall :: proc(func : ^PyObject, args : ^^PyObject, nargs : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyObject_CallNoArg")
    _PyObject_CallNoArg :: proc(func : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyObject_Call_Prepend")
    _PyObject_Call_Prepend :: proc(callable : ^PyObject, obj : ^PyObject, args : ^PyObject, kwargs : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyObject_FastCall_Prepend")
    _PyObject_FastCall_Prepend :: proc(callable : ^PyObject, obj : ^PyObject, args : ^^PyObject, nargs : _c.ssize_t) -> ^PyObject ---;

    @(link_name="_PyObject_CallMethodId")
    _PyObject_CallMethodId :: proc(obj : ^PyObject, name : ^_Py_Identifier, format : cstring) -> ^PyObject ---;

    @(link_name="_PyObject_CallMethodId_SizeT")
    _PyObject_CallMethodId_SizeT :: proc(obj : ^PyObject, name : ^_Py_Identifier, format : cstring) -> ^PyObject ---;

    @(link_name="_PyObject_CallMethodIdObjArgs")
    _PyObject_CallMethodIdObjArgs :: proc(obj : ^PyObject, name : ^_Py_Identifier) -> ^PyObject ---;

    @(link_name="_PyObject_HasLen")
    _PyObject_HasLen :: proc(o : ^PyObject) -> _c.int ---;

    @(link_name="PyObject_LengthHint")
    PyObject_LengthHint :: proc(o : ^PyObject, unamed0 : _c.ssize_t) -> _c.ssize_t ---;

    @(link_name="PyObject_GetBuffer")
    PyObject_GetBuffer :: proc(obj : ^PyObject, view : ^Py_buffer, flags : _c.int) -> _c.int ---;

    @(link_name="PyBuffer_GetPointer")
    PyBuffer_GetPointer :: proc(view : ^Py_buffer, indices : ^_c.ssize_t) -> rawptr ---;

    @(link_name="PyBuffer_SizeFromFormat")
    PyBuffer_SizeFromFormat :: proc(unamed0 : cstring) -> _c.int ---;

    @(link_name="PyBuffer_ToContiguous")
    PyBuffer_ToContiguous :: proc(buf : rawptr, view : ^Py_buffer, len : _c.ssize_t, order : _c.char) -> _c.int ---;

    @(link_name="PyBuffer_FromContiguous")
    PyBuffer_FromContiguous :: proc(view : ^Py_buffer, buf : rawptr, len : _c.ssize_t, order : _c.char) -> _c.int ---;

    @(link_name="PyObject_CopyData")
    PyObject_CopyData :: proc(dest : ^PyObject, src : ^PyObject) -> _c.int ---;

    @(link_name="PyBuffer_IsContiguous")
    PyBuffer_IsContiguous :: proc(view : ^Py_buffer, fort : _c.char) -> _c.int ---;

    @(link_name="PyBuffer_FillContiguousStrides")
    PyBuffer_FillContiguousStrides :: proc(ndims : _c.int, shape : ^_c.ssize_t, strides : ^_c.ssize_t, itemsize : _c.int, fort : _c.char) ---;

    @(link_name="PyBuffer_FillInfo")
    PyBuffer_FillInfo :: proc(view : ^Py_buffer, o : ^PyObject, buf : rawptr, len : _c.ssize_t, readonly : _c.int, flags : _c.int) -> _c.int ---;

    @(link_name="PyBuffer_Release")
    PyBuffer_Release :: proc(view : ^Py_buffer) ---;

    @(link_name="_PySequence_IterSearch")
    _PySequence_IterSearch :: proc(seq : ^PyObject, obj : ^PyObject, operation : _c.int) -> _c.ssize_t ---;

    @(link_name="_PyObject_RealIsInstance")
    _PyObject_RealIsInstance :: proc(inst : ^PyObject, cls : ^PyObject) -> _c.int ---;

    @(link_name="_PyObject_RealIsSubclass")
    _PyObject_RealIsSubclass :: proc(derived : ^PyObject, cls : ^PyObject) -> _c.int ---;

    @(link_name="_PySequence_BytesToCharpArray")
    _PySequence_BytesToCharpArray :: proc(self : ^PyObject) -> ^cstring ---;

    @(link_name="_Py_FreeCharPArray")
    _Py_FreeCharPArray :: proc(array : ^cstring) ---;

    @(link_name="_Py_add_one_to_index_F")
    _Py_add_one_to_index_F :: proc(nd : _c.int, index : ^_c.ssize_t, shape : ^_c.ssize_t) ---;

    @(link_name="_Py_add_one_to_index_C")
    _Py_add_one_to_index_C :: proc(nd : _c.int, index : ^_c.ssize_t, shape : ^_c.ssize_t) ---;

    @(link_name="_Py_convert_optional_to_ssize_t")
    _Py_convert_optional_to_ssize_t :: proc(unamed0 : ^PyObject, unamed1 : rawptr) -> _c.int ---;

    @(link_name="PyEval_EvalCode")
    PyEval_EvalCode :: proc(unamed0 : ^PyObject, unamed1 : ^PyObject, unamed2 : ^PyObject) -> ^PyObject ---;

    @(link_name="PyEval_EvalCodeEx")
    PyEval_EvalCodeEx :: proc(co : ^PyObject, globals : ^PyObject, locals : ^PyObject, args : ^^PyObject, argc : _c.int, kwds : ^^PyObject, kwdc : _c.int, defs : ^^PyObject, defc : _c.int, kwdefs : ^PyObject, closure : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyEval_EvalCodeWithName")
    _PyEval_EvalCodeWithName :: proc(co : ^PyObject, globals : ^PyObject, locals : ^PyObject, args : ^^PyObject, argcount : _c.ssize_t, kwnames : ^^PyObject, kwargs : ^^PyObject, kwcount : _c.ssize_t, kwstep : _c.int, defs : ^^PyObject, defcount : _c.ssize_t, kwdefs : ^PyObject, closure : ^PyObject, name : ^PyObject, qualname : ^PyObject) -> ^PyObject ---;

    @(link_name="_PyEval_CallTracing")
    _PyEval_CallTracing :: proc(func : ^PyObject, args : ^PyObject) -> ^PyObject ---;

    @(link_name="PyOS_string_to_double")
    PyOS_string_to_double :: proc(str : cstring, endptr : ^cstring, overflow_exception : ^PyObject) -> _c.double ---;

    @(link_name="PyOS_double_to_string")
    PyOS_double_to_string :: proc(val : _c.double, format_code : _c.char, precision : _c.int, flags : _c.int, type : ^_c.int) -> cstring ---;

    @(link_name="_Py_string_to_number_with_underscores")
    _Py_string_to_number_with_underscores :: proc(str : cstring, len : _c.ssize_t, what : cstring, obj : ^PyObject, arg : rawptr, unamed0 : #type proc(unamed0 : cstring, unamed1 : _c.ssize_t, unamed2 : rawptr) -> ^PyObject) -> ^PyObject ---;

    @(link_name="_Py_parse_inf_or_nan")
    _Py_parse_inf_or_nan :: proc(p : cstring, endptr : ^cstring) -> _c.double ---;

    @(link_name="PyOS_mystrnicmp")
    PyOS_mystrnicmp :: proc(unamed0 : cstring, unamed1 : cstring, unamed2 : _c.ssize_t) -> _c.int ---;

    @(link_name="PyOS_mystricmp")
    PyOS_mystricmp :: proc(unamed0 : cstring, unamed1 : cstring) -> _c.int ---;

    @(link_name="_Py_dg_strtod")
    _Py_dg_strtod :: proc(str : cstring, ptr : ^cstring) -> _c.double ---;

    @(link_name="_Py_dg_dtoa")
    _Py_dg_dtoa :: proc(d : _c.double, mode : _c.int, ndigits : _c.int, decpt : ^_c.int, sign : ^_c.int, rve : ^cstring) -> cstring ---;

    @(link_name="_Py_dg_freedtoa")
    _Py_dg_freedtoa :: proc(s : cstring) ---;

    @(link_name="_Py_dg_stdnan")
    _Py_dg_stdnan :: proc(sign : _c.int) -> _c.double ---;

    @(link_name="_Py_dg_infinity")
    _Py_dg_infinity :: proc(sign : _c.int) -> _c.double ---;

    @(link_name="Py_DecodeLocale")
    Py_DecodeLocale :: proc(arg : cstring, size : ^_c.size_t) -> ^_c.wchar_t ---;

    @(link_name="Py_EncodeLocale")
    Py_EncodeLocale :: proc(text : ^_c.wchar_t, error_pos : ^_c.size_t) -> cstring ---;

    @(link_name="_Py_EncodeLocaleRaw")
    _Py_EncodeLocaleRaw :: proc(text : ^_c.wchar_t, error_pos : ^_c.size_t) -> cstring ---;

    @(link_name="_Py_GetErrorHandler")
    _Py_GetErrorHandler :: proc(errors : cstring) -> _Py_error_handler ---;

    @(link_name="_Py_DecodeLocaleEx")
    _Py_DecodeLocaleEx :: proc(arg : cstring, wstr : ^^_c.wchar_t, wlen : ^_c.size_t, reason : ^cstring, current_locale : _c.int, errors : _Py_error_handler) -> _c.int ---;

    @(link_name="_Py_EncodeLocaleEx")
    _Py_EncodeLocaleEx :: proc(text : ^_c.wchar_t, str : ^cstring, error_pos : ^_c.size_t, reason : ^cstring, current_locale : _c.int, errors : _Py_error_handler) -> _c.int ---;

    @(link_name="_Py_device_encoding")
    _Py_device_encoding :: proc(unamed0 : _c.int) -> ^PyObject ---;

    @(link_name="_Py_fstat")
    _Py_fstat :: proc(fd : _c.int, status : ^stat) -> _c.int ---;

    @(link_name="_Py_fstat_noraise")
    _Py_fstat_noraise :: proc(fd : _c.int, status : ^stat) -> _c.int ---;

    @(link_name="_Py_stat")
    _Py_stat :: proc(path : ^PyObject, status : ^stat) -> _c.int ---;

    @(link_name="_Py_open")
    _Py_open :: proc(pathname : cstring, flags : _c.int) -> _c.int ---;

    @(link_name="_Py_open_noraise")
    _Py_open_noraise :: proc(pathname : cstring, flags : _c.int) -> _c.int ---;

    @(link_name="_Py_wfopen")
    _Py_wfopen :: proc(path : ^_c.wchar_t, mode : ^_c.wchar_t) -> ^FILE ---;

    @(link_name="_Py_fopen")
    _Py_fopen :: proc(pathname : cstring, mode : cstring) -> ^FILE ---;

    @(link_name="_Py_fopen_obj")
    _Py_fopen_obj :: proc(path : ^PyObject, mode : cstring) -> ^FILE ---;

    @(link_name="_Py_read")
    _Py_read :: proc(fd : _c.int, buf : rawptr, count : _c.size_t) -> _c.ssize_t ---;

    @(link_name="_Py_write")
    _Py_write :: proc(fd : _c.int, buf : rawptr, count : _c.size_t) -> _c.ssize_t ---;

    @(link_name="_Py_write_noraise")
    _Py_write_noraise :: proc(fd : _c.int, buf : rawptr, count : _c.size_t) -> _c.ssize_t ---;

    @(link_name="_Py_wreadlink")
    _Py_wreadlink :: proc(path : ^_c.wchar_t, buf : ^_c.wchar_t, buflen : _c.size_t) -> _c.int ---;

    @(link_name="_Py_wrealpath")
    _Py_wrealpath :: proc(path : ^_c.wchar_t, resolved_path : ^_c.wchar_t, resolved_path_len : _c.size_t) -> ^_c.wchar_t ---;

    @(link_name="_Py_wgetcwd")
    _Py_wgetcwd :: proc(buf : ^_c.wchar_t, buflen : _c.size_t) -> ^_c.wchar_t ---;

    @(link_name="_Py_get_inheritable")
    _Py_get_inheritable :: proc(fd : _c.int) -> _c.int ---;

    @(link_name="_Py_set_inheritable")
    _Py_set_inheritable :: proc(fd : _c.int, inheritable : _c.int, atomic_flag_works : ^_c.int) -> _c.int ---;

    @(link_name="_Py_set_inheritable_async_safe")
    _Py_set_inheritable_async_safe :: proc(fd : _c.int, inheritable : _c.int, atomic_flag_works : ^_c.int) -> _c.int ---;

    @(link_name="_Py_dup")
    _Py_dup :: proc(fd : _c.int) -> _c.int ---;

    @(link_name="_Py_get_blocking")
    _Py_get_blocking :: proc(fd : _c.int) -> _c.int ---;

    @(link_name="_Py_set_blocking")
    _Py_set_blocking :: proc(fd : _c.int, blocking : _c.int) -> _c.int ---;

    @(link_name="PyTraceMalloc_Track")
    PyTraceMalloc_Track :: proc(domain : _c.uint, ptr : _c.uintptr_t, size : _c.size_t) -> _c.int ---;

    @(link_name="PyTraceMalloc_Untrack")
    PyTraceMalloc_Untrack :: proc(domain : _c.uint, ptr : _c.uintptr_t) -> _c.int ---;

    @(link_name="_PyTraceMalloc_GetTraceback")
    _PyTraceMalloc_GetTraceback :: proc(domain : _c.uint, ptr : _c.uintptr_t) -> ^PyObject ---;

}
