# Paths
server_path := https://github.com/sudodotdog/brontosaurus-server
portal_path := https://github.com/sudodotdog/brontosaurus-portal

# Routes
server_route := ./module/server
portal_route := ./module/portal

# Docker
image_name := brontosaurus
image_tag := brontosaurus-server

.IGNORE: clone stop dir-portal

main: sh-dev
	@echo "[INFO] Use build"

build: clone pull install module docker
	@echo "[INFO] Build finished"

module: build-module copy-module

build-module: build-portal build-server

build-portal:
	@echo "[INFO] Build portal"
	@cd $(portal_route) && make build

build-server:
	@echo "[INFO] Build server"
	@cd $(server_route) && make build

copy-module: copy-portal

copy-portal: dir-portal
	@echo "[INFO] Copying portal"
	@cp $(portal_route)/dist/* $(server_route)/public/portal

dir-portal:
	@echo "[INFO] Creating portal folder"
	@mkdir $(server_route)/public/portal

clone:
	@echo "[INFO] Clone modules"
	@git clone $(server_path) $(server_route)
	@git clone $(portal_path) $(portal_route)

pull:
	@echo "[INFO] Pull changes"
	@cd $(server_route) && git reset HEAD --hard && git pull
	@cd $(portal_route) && git reset HEAD --hard && git pull
	
install:
	@echo "[INFO] Install dependency"
	@cd $(server_route) && make install
	@cd $(portal_route) && make install

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

docker:
	@echo "[INFO] Build docker"
	@docker build -t $(image_name) ./images/portal
