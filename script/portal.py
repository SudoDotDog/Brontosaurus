#!/usr/bin python3
# -*- coding: utf-8 -*-

import os
from common import action
from common.assertion import assertIsTrue

BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir, os.pardir))

# Routes
server_route = os.path.join(BASE_URL, 'module', 'server')
portal_route = os.path.join(BASE_URL, 'module', 'portal')

# Docker
image_name = "brontosaurus"
dockerfile_path = os.path.join(BASE_URL, 'docker', 'portal.dockerfile')

# Repository
assertIsTrue(action.cloneOrResetAndPullRepository(
    "SudoDotDog", "Brontosaurus-Portal", portal_route))
assertIsTrue(action.cloneOrResetAndPullRepository(
    "SudoDotDog", "Brontosaurus-Server", server_route))

# Install Build
assertIsTrue(action.installAndBuildPackage(portal_route))
assertIsTrue(action.installAndBuildPackage(server_route))

# Prepare
assertIsTrue(action.makeDir(os.path.join(server_route, 'public', 'portal')))
assertIsTrue(action.copyModule(
    os.path.join(portal_route, 'dist'),
    os.path.join(server_route, 'public', 'portal'),
))

# Docker
assertIsTrue(action.buildDocker(dockerfile_path, image_name, BASE_URL))
