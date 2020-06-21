# -*- coding: utf-8 -*-

import json
import os
import subprocess
import shutil


def versiontuple(v):
    return tuple(map(int, (v.split("."))))


def getLatestVersion(path):
    version = open(path)
    text = version.read()
    data = json.loads(text)
    latest = max(data, key=versiontuple)
    return latest


def tagDocker(imageName, hubName, version):
    tag = "{0}:{1}".format(hubName, version)
    print(
        "[INFO] Tag Docker {0} -> {1}".format(imageName, tag))
    print("[COMD] * docker tag {0} {1}".format(imageName, tag))
    child = subprocess.Popen(
        ["docker", "tag", imageName, tag], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    child.wait()
    rc = child.returncode
    return rc == 0


def pushDocker(hubName, version):
    tag = "{0}:{1}".format(hubName, version)
    print(
        "[INFO] Push Docker {0}".format(tag))
    print("[COMD] * docker push {0}".format(tag))
    child = subprocess.Popen(
        ["docker", "push", tag], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    child.wait()
    rc = child.returncode
    return rc == 0
