import cython
import math

# https://towardsdatascience.com/use-cython-to-get-more-than-30x-speedup-on-your-python-code-f6cb337919b6
""" Types in Cython

For variables we have:
    cdef int a, b, c
    cdef char *s
    cdef float x = 0.5 (single precision)
    cdef double x = 63.4 (double precision)
    cdef list names
    cdef dict goals_for_each_play
    cdef object card_deck

For the functions we have:
    def — regular python function, calls from Python only.
    cdef — Cython only functions which can’t be accessed from python-only code i.e must be called within Cython
    cpdef — C and Python. Can be accessed from both C and Python

"""


# Python function
def test_py(x):
    y = 1
    for i in range(1, x+1):
        y += i / 200
    return y


# Cython function
cpdef float test_pyx(int x):
    cdef float y = 1
    cdef float i
    for i in range(1, x+1):
        y += i / 200
    return y
