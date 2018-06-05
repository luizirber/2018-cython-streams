from libcpp.string cimport string

cdef extern from '<sstream>' namespace 'std' nogil:
    cppclass stringbuf:
        stringbuf() except +
        void str(const string&) except +

cdef extern from 'process.hpp':
    unsigned char process(stringbuf &)

a = b"1234"
cdef stringbuf c;
c.str(a)
b = process(c)
print(b)
