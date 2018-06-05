from libcpp.string cimport string
from cython.operator cimport dereference as deref

cdef extern from "<iostream>" namespace "std":
    cdef cppclass istream:
        pass
    cdef cppclass istringstream(istream):
        istringstream(char*)

cdef extern from 'process.hpp':
    unsigned char process(istringstream &)

with open('internal.0', 'rb') as f:
    a = f.read()

cdef istringstream *c = new istringstream(a)
b = process(deref(c))
print(chr(b))
