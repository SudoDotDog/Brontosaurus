# -*- coding: utf-8 -*-

import os
import subprocess
import shutil


def cloneRepository(origination, repository, target):
    print("[INFO] Git Clone {0}".format(target))
    origin = "https://github.com/{0}/{1}".format(origination, repository)
    child = subprocess.Popen(["git", "clone", origin, target],
                             stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    child.wait()
    rc = child.returncode
    return rc == 0


def resetRepository(target):
    print("[INFO] Git Reset {0}".format(target))
    child = subprocess.Popen(["git", "reset", "HEAD", "--hard"],
                             stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, cwd=target)
    child.wait()
    rc = child.returncode
    return rc == 0


def pullRepository(target):
    print("[INFO] Git Pull {0}".format(target))
    child = subprocess.Popen(
        ["git", "pull"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, cwd=target)
    child.wait()
    rc = child.returncode
    return rc == 0


def resetAndPullRepository(target):
    resetRc = resetRepository(target)
    if resetRc:
        return pullRepository(target)
    return False


def cloneOrResetAndPullRepository(origination, repository, target):
    cloneRc = cloneRepository(origination, repository, target)
    if cloneRc:
        return True
    return resetAndPullRepository(target)


def installPackage(target):
    print("[INFO] Installing dependency for {0}".format(target))
    child = subprocess.Popen(
        ["make", "install"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, cwd=target)
    child.wait()
    rc = child.returncode
    return rc == 0


def buildPackage(target):
    print("[INFO] Building package for {0}".format(target))
    child = subprocess.Popen(
        ["make", "build"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, cwd=target)
    child.wait()
    rc = child.returncode
    return rc == 0


def installAndBuildPackage(target):
    installRc = installPackage(target)
    if installRc:
        return buildPackage(target)
    return False


def makeDir(target):
    if not os.path.exists(target):
        os.makedirs(target)
    return True


def copyModule(source, target):
    print("[INFO] Copying module to {0}".format(target))
    files = os.listdir(source)
    for file in files:
        filePath = os.path.join(source, file)
        if (os.path.isfile(filePath)):
            shutil.copy(filePath, target)

    return True


def buildDocker(dockerFile, imageName, workPath):
    print("[INFO] Build Docker {0}".format(imageName))
    child = subprocess.Popen(
        ["docker", "build", "-t", imageName, "-f", dockerFile, workPath],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )
    child.wait()
    rc = child.returncode
    return rc == 0
