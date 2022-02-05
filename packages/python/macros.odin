package python

import _c "core:c"

_PyStatus_EXCEPTION :: proc(err: PyStatus) -> bool {
    return err._type != PyStatus_TYPE_OK
} 