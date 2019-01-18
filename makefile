# Paths
server_path := https://github.com/sudodotdog/brontosaurus-server
portal_path := https://github.com/sudodotdog/brontosaurus-portal

# Routes
server_route := ./module/server
portal_route := ./module/portal

# Docker
image_name := brontosaurus
image_tag := brontosaurus-server

.IGNORE: clone stop

main:
	@echo "[Info] Use build"

build: clone pull install module docker
	@echo "[Info] Build finished"

module: build-module copy-module

build-module: build-portal build-server

build-portal:
	@echo "[Info] Build portal"
	@cd $(portal_route) && make build

build-server:
	@echo "[Info] Build server"
	@cd $(server_route) && make build

copy-module: copy-portal

copy-portal:
	@echo "[Info] Copying portal"
	@cp $(portal_route)/dist/* $(server_route)/public/portal

clone:
	@echo "[Info] Clone modules"
	@git clone $(server_path) $(server_route)
	@git clone $(portal_path) $(portal_route)

pull:
	@echo "[Info] Pull changes"
	@cd $(server_route) && git pull
	@cd $(portal_route) && git pull
	
install:
	@echo "[Info] Install dependency"
	@cd $(server_route) && make install
	@cd $(portal_route) && make install

run:
	@echo "[Info] Run docker"
	@docker run brontosaurus

stop:
	@echo "[Info] Stopping running container"
	@docker rm $(image_tag)

sh-80: stop
	@echo "[Info] Run docker with sh"
	@docker rm $(image_tag)
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 80:8080 --name $(image_tag) brontosaurus sh

sh: stop
	@echo "[Info] Run docker with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 8080:8080 --name $(image_tag) brontosaurus sh

docker:
	@echo "[Info] Build docker"
	@docker build -t $(image_name) .
