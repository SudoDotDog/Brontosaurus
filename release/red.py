# -*- coding: utf-8 -*-

import json
import os
from common import action
from common.assertion import assertIsTrue

image_name = "brontosaurus-red"
hub_name = "brontosaurus/red"

BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir))

portal = open(os.path.join(BASE_URL, 'red.json'))
text = portal.read()
data = json.loads(text)

latest = max(data, key=action.versiontuple)

assertIsTrue(action.tagDocker(image_name, hub_name, latest))
assertIsTrue(action.pushDocker(hub_name, latest))
