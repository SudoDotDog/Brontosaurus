# -*- coding: utf-8 -*-

import os
from common import action
from common.assertion import assertIsTrue

image_name = "brontosaurus-green"
hub_name = "brontosaurus/green"

BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir))

version_path = os.path.join(BASE_URL, 'green.json')
latest = action.getLatestVersion(version_path)

assertIsTrue(action.tagDocker(image_name, hub_name, latest))
assertIsTrue(action.pushDocker(hub_name, latest))
