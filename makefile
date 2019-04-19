# Docker
portal_name := brontosaurus
portal_tag := brontosaurus-server

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
	@docker rm $(portal_tag)
	@docker rm $(red_tag)

sh-80: stop
	@echo "[INFO] Run docker with sh"
	@docker rm $(portal_tag)
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 80:8080 --name $(portal_tag) $(portal_name) sh

sh-portal: stop
	@echo "[INFO] Run portal with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 8080:8080 --name $(portal_tag) $(portal_name) sh

sh-red: stop
	@echo "[INFO] Run red with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 9000:9000 --name $(red_tag) $(red_name) sh

sh-dev: stop
	@echo "[INFO] Run docker with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -p 8080:8080 --name $(portal_tag) $(portal_name) sh
