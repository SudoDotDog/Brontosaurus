#!/usr/bin python3
# -*- coding: utf-8 -*-

import os
import subprocess

BASE_URL = os.path.abspath(os.path.join(
    __file__, os.pardir, os.pardir, os.pardir))

def cloneRepository(origination, repository, target):
    origin = "https://github.com/{0}/{1}".format(origination, repository)
    child = subprocess.Popen(["git", "clone", origin, target], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    child.wait()
    rc = child.returncode
    return rc == 0

def pullRepository(target):
    child = subprocess.Popen(["git", "pull"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, cwd=target)
    child.wait()
    rc = child.returncode
    return rc == 0

def installPackage(target):
    child = subprocess.Popen(["make", "install"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, cwd=target)
    child.wait()
    rc = child.returncode
    return rc == 0

print(cloneRepository("SudoDotDog", "Brontosaurus", os.path.join(BASE_URL, 'module', 'portal')))
print(pullRepository(os.path.join(BASE_URL, 'module', 'portal')))
print(installPackage(os.path.join(BASE_URL, 'module', 'portal')))
