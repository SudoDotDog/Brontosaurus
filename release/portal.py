# -*- coding: utf-8 -*-

import json
import os
import subprocess
import sys

image_name = "brontosaurus"
hub_name = "brontosaurus/core"


def assertIsTrue(result):
    if not result:
        print("[ERROR]")
        sys.exit()


def versiontuple(v):
    return tuple(map(int, (v.split("."))))


BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir))

portal = open(os.path.join(BASE_URL, 'portal.json'))
text = portal.read()
data = json.loads(text)

latest = max(data, key=versiontuple)
tag = "{0}:{1}".format(hub_name, latest)

child = subprocess.Popen(
    ["docker", "tag", image_name, tag], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
child.wait()
assertIsTrue(child.returncode)
