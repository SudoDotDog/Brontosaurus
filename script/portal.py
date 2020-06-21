# -*- coding: utf-8 -*-

import os
from common import action
from common.assertion import assertIsTrue

BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir, os.pardir))

# Routes
server_route = os.path.join(BASE_URL, 'module', 'server')
portal_route = os.path.join(BASE_URL, 'module', 'portal')
icon_route = os.path.join(BASE_URL, 'icon', 'transparent', 'icon-512x512.png')

# Docker
image_name = "brontosaurus-portal"
dockerfile_path = os.path.join(BASE_URL, 'docker', 'portal.dockerfile')

# Repository
assertIsTrue(action.cloneOrResetAndPullRepository(
    "SudoDotDog", "Brontosaurus-Portal", portal_route))
assertIsTrue(action.cloneOrResetAndPullRepository(
    "SudoDotDog", "Brontosaurus-Server", server_route))
assertIsTrue(action.removeFolder(os.path.join(server_route, 'public')))
assertIsTrue(action.removeFolder(os.path.join(portal_route, 'dist')))

# Install Build
assertIsTrue(action.installAndBuildPackage(portal_route))
assertIsTrue(action.installAndBuildPackage(server_route))

# Prepare
assertIsTrue(action.makeDir(os.path.join(server_route, 'public')))
assertIsTrue(action.makeDir(os.path.join(server_route, 'public', 'portal')))
assertIsTrue(action.copyModule(
    os.path.join(portal_route, 'dist'),
    os.path.join(server_route, 'public', 'portal'),
))
assertIsTrue(action.copyFile(
    icon_route,
    os.path.join(server_route, 'public', 'portal', 'favicon.png'),
))

# Version
version_path = os.path.join(BASE_URL, 'release', 'portal.json')
latest = action.getLatestVersion(version_path)

# Docker
assertIsTrue(action.buildDocker(dockerfile_path, image_name, latest, BASE_URL))
