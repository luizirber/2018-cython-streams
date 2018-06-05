from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

setup(
    name = 'Cython streambuf test',
    ext_modules = cythonize([
        Extension("streambuf",
        headers=['process.hpp'],
        sources=["streambuf.pyx"],
        language="c++",)
    ]),
)
