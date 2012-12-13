"""
Low-level data descriptors accessible from C, Cython and Python (and numba
in the future).
"""

#------------------------------------------------------------------------
# See lldescriptors.pxd for type definitions
#------------------------------------------------------------------------

cdef class Tile(object):
    """
    Tiles exposed to Python
    """

    def __init__(self, Py_uintptr_t data, tuple shape):
        cdef int i

        self.tile.ndim = len(shape)
        for i in range(len(shape)):
            self.tile.shape[i] = shape[i]