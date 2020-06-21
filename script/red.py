# -*- coding: utf-8 -*-

import os
from common import action
from common.assertion import assertIsTrue

BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir, os.pardir))

# Routes
mint_route = os.path.join(BASE_URL, 'module', 'mint')
red_route = os.path.join(BASE_URL, 'module', 'red')
icon_route = os.path.join(BASE_URL, 'icon', 'transparent', 'icon-512x512.png')

# Docker
image_name = "brontosaurus-red"
dockerfile_path = os.path.join(BASE_URL, 'docker', 'red.dockerfile')

# Repository
assertIsTrue(action.cloneOrResetAndPullRepository(
    "SudoDotDog", "Brontosaurus-Red", red_route))
assertIsTrue(action.cloneOrResetAndPullRepository(
    "SudoDotDog", "Brontosaurus-Mint", mint_route))
assertIsTrue(action.removeFolder(os.path.join(mint_route, 'public')))
assertIsTrue(action.removeFolder(os.path.join(red_route, 'dist')))

# Install Build
assertIsTrue(action.installAndBuildPackage(red_route))
assertIsTrue(action.installAndBuildPackage(mint_route))

# Prepare
assertIsTrue(action.makeDir(os.path.join(mint_route, 'public')))
assertIsTrue(action.makeDir(os.path.join(mint_route, 'public', 'red')))
assertIsTrue(action.copyModule(
    os.path.join(red_route, 'dist'),
    os.path.join(mint_route, 'public', 'red'),
))
assertIsTrue(action.copyFile(
    icon_route,
    os.path.join(mint_route, 'public', 'red', 'favicon.png'),
))

# Version
version_path = os.path.join(BASE_URL, 'release', 'red.json')
latest = action.getLatestVersion(version_path)

# Docker
assertIsTrue(action.buildDocker(dockerfile_path, image_name, latest, BASE_URL))
