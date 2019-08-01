import cython_funcs
import time

number = 2_000_000

y = 1
for i in range(1, 200+1):
    y = (y * i) ** (1 / 2)

print(y)


start = time.time()
print(cython_funcs.test_py(number))
end = time.time()
py_time = end - start
print(f"Python time is {py_time}")

start = time.time()
print(cython_funcs.test_pyx(number))
end = time.time()
cy_time = end - start
print(f"Cython time is {cy_time}")
