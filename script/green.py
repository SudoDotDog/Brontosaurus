# -*- coding: utf-8 -*-

import os
from common import action
from common.assertion import assertIsTrue

BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir, os.pardir))

# Routes
green_route = os.path.join(BASE_URL, 'module', 'green')

# Docker
image_name = "brontosaurus-green"
dockerfile_path = os.path.join(BASE_URL, 'docker', 'green.dockerfile')

# Repository
assertIsTrue(action.cloneOrResetAndPullRepository(
    "SudoDotDog", "Brontosaurus-Green", green_route))
assertIsTrue(action.removeFolder(os.path.join(green_route, 'dist')))

# Install Build
assertIsTrue(action.installAndBuildPackage(green_route))

# Docker
assertIsTrue(action.buildDocker(dockerfile_path, image_name, BASE_URL))
