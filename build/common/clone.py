#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import subprocess

BASE_URL = os.path.abspath(os.path.join(
    __file__, os.pardir, os.pardir, os.pardir))

print(BASE_URL)

def cloneServer(origination, repository, target):
    origin = "https://github.com/{0}/{1}".format(origination, repository)
    child = subprocess.Popen(["git", "clone", origin, target], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    child.wait()
    rc = child.returncode
    print(rc)
    

cloneServer("SudoDotDog", "Brontosaurus", os.path.join(BASE_URL, 'module', 'portal'))
