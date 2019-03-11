#!/usr/bin python3
# -*- coding: utf-8 -*-

import os
from common import action

BASE_URL = os.path.abspath(os.path.join(__file__, os.pardir, os.pardir))

# Routes
server_route = os.path.join(BASE_URL, 'module', 'server')
portal_route = os.path.join(BASE_URL, 'module', 'portal')

# Docker
image_name = "brontosaurus"
image_tag = "brontosaurus-server"

action.cloneOrResetAndPullRepository(
    "SudoDotDog", "Brontosaurus-Portal", portal_route)
action.installAndBuildPackage(portal_route)
