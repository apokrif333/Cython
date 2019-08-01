from distutils.core import setup
from Cython.Build import cythonize

# In command prompt, in current directory run "python setup.py build_ext --inplace"

setup(ext_modules=cythonize('cython_funcs.pyx'))
