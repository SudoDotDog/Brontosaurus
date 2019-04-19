# Paths
server_path := https://github.com/sudodotdog/brontosaurus-server
portal_path := https://github.com/sudodotdog/brontosaurus-portal

# Routes
server_route := ./module/server
portal_route := ./module/portal

# Docker
image_name := brontosaurus
image_tag := brontosaurus-server

.IGNORE: clean stop

main: sh-dev
	@echo "[INFO] Use build"

build: build-portal build-red

build-portal:
	@echo "[INFO] Build portal docker image"
	@py script/portal.py

build-red:
	@echo "[INFO] Build red docker image"
	@py script/red.py

run:
	@echo "[INFO] Run docker"
	@docker run brontosaurus

stop:
	@echo "[INFO] Stopping running container"
	@docker rm $(image_tag)

sh-80: stop
	@echo "[INFO] Run docker with sh"
	@docker rm $(image_tag)
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 80:8080 --name $(image_tag) brontosaurus sh

sh: stop
	@echo "[INFO] Run docker with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 8080:8080 --name $(image_tag) brontosaurus sh

sh-dev: stop
	@echo "[INFO] Run docker with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -p 8080:8080 --name $(image_tag) brontosaurus sh
