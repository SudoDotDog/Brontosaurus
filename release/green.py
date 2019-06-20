# -*- coding: utf-8 -*-

import json
import os
from common import action
from common.assertion import assertIsTrue

image_name = "brontosaurus-green"
hub_name = "brontosaurus/green"


def versiontuple(v):
    return tuple(map(int, (v.split("."))))


BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir))

green = open(os.path.join(BASE_URL, 'green.json'))
text = green.read()
data = json.loads(text)

latest = max(data, key=versiontuple)

assertIsTrue(action.tagDocker(image_name, hub_name, latest))
assertIsTrue(action.pushDocker(hub_name, latest))
