package python

import _c "core:c"

// Contains types, which are not implemented in odin

timeval :: struct {
	tv_sec: _c.long,
	tv_usec: _c.long,
}