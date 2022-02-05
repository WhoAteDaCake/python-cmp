# Short term goals

* ~~Open bindings to CPython~~
* ~~Parse Python using the bindings~~
* Translate C code piece by piece till functions, which parse code.
    * 

# Long term goals 

* Gain deeper understanding of CPython via [behind the scenes](https://tenthousandmeters.com/blog/python-behind-the-scenes-1-how-the-cpython-vm-works/) and [other references](https://github.com/brunocampos01/understanding-the-python-ecosystem)
* Take inspiration and investigate [pyston](https://github.com/pyston/pyston)
* Create a python interpreter in odin
* Create a python -> Odin/C compiler 

Tasks:
* import _libc "core:c/libc"
* import _os "core:os"
* Swap wchar_t for _c.wchar_t
* Replace FILE with _libc.FILE
* Replace time_t with _libc.time_t
* Replace va_list with _libc.va_list
* Replace stat with _os.OS_Stat
* MANUALLY replace tm with _libc.tm 
* Replace pthread_key_t with u32