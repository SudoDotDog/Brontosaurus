# Paths
server_path := https://github.com/sudodotdog/brontosaurus-server
portal_path := https://github.com/sudodotdog/brontosaurus-portal

# Routes
server_route := ./module/server
portal_route := ./module/portal

# Docker
image_name := brontosaurus
image_tag := brontosaurus-server

red_name := brontosaurus-mint
red_tag := brontosaurus-mint

.IGNORE: clean stop

main: sh-dev
	@echo "[INFO] Use build"

build: build-portal build-red

build-portal:
	@echo "[INFO] Build portal docker image"
	@python3 script/portal.py

build-red:
	@echo "[INFO] Build red docker image"
	@python3 script/red.py

run:
	@echo "[INFO] Run docker"
	@docker run brontosaurus

stop:
	@echo "[INFO] Stopping running container"
	@docker rm $(image_tag)
	@docker rm $(red_tag)

sh-80: stop
	@echo "[INFO] Run docker with sh"
	@docker rm $(image_tag)
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 80:8080 --name $(image_tag) brontosaurus sh

sh: stop
	@echo "[INFO] Run docker with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 8080:8080 --name $(image_tag) brontosaurus sh

sh-red: stop
	@echo "[INFO] Run docker with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 9000:9000 --name $(red_tag) $(red_name) sh

sh-dev: stop
	@echo "[INFO] Run docker with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -p 8080:8080 --name $(image_tag) brontosaurus sh
