import os

BASE_URL = os.path.abspath(os.path.join(
    __file__, os.pardir, os.pardir, os.pardir))

print(BASE_URL)


def cloneServer():
    print(BASE_URL)
