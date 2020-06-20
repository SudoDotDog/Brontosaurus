# Docker
# portal
portal_name := brontosaurus-portal
portal_tag := brontosaurus-server
# red
red_name := brontosaurus-red
red_tag := brontosaurus-mint
# green
green_name := brontosaurus-green
green_tag := brontosaurus-green

# Command
python3 := python3

.IGNORE: clean stop

main:
	@echo "[INFO] Nothing to run"

build: build-portal build-red build-green

build-portal:
	@echo "[INFO] Build portal docker image"
	@$(python3) script/portal.py

build-red:
	@echo "[INFO] Build red docker image"
	@$(python3) script/red.py

build-green:
	@echo "[INFO] Build green docker image"
	@$(python3) script/green.py

build-all: build-portal build-red build-green

stop:
	@echo "[INFO] Stopping running container"
	@docker rm $(portal_tag) -f
	@docker rm $(red_tag) -f
	@docker rm $(green_tag) -f

purge:
	@echo "[INFO] Purge container"
	@$(python3) script/purge.py

portal: stop
	@echo "[INFO] Run portal with default"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 8080:8080 --name $(portal_tag) $(portal_name)

red: stop
	@echo "[INFO] Run red with default"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e PORTAL_PATH=$(PP) -p 9000:9000 --name $(red_tag) $(red_name)

green: stop
	@echo "[INFO] Run green with default"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 8500:8500 --name $(green_tag) $(green_name)

portal-dev: stop
	@echo "[INFO] Run portal with default development"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -p 8080:8080 --name $(portal_tag) $(portal_name)

red-dev: stop
	@echo "[INFO] Run red with default development"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -e PORTAL_PATH=$(PP) -p 9000:9000 --name $(red_tag) $(red_name)

green-dev: stop
	@echo "[INFO] Run green with default development"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -p 8500:8500 --name $(green_tag) $(green_name)

sh-80: stop
	@echo "[INFO] Run docker with sh"
	@docker rm $(portal_tag)
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 80:8080 --name $(portal_tag) $(portal_name) sh

sh-portal: stop
	@echo "[INFO] Run portal with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 8080:8080 --name $(portal_tag) $(portal_name) sh

sh-red: stop
	@echo "[INFO] Run red with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e PORTAL_PATH=$(PP) -p 9000:9000 --name $(red_tag) $(red_name) sh

sh-green: stop
	@echo "[INFO] Run green with sh"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -p 8500:8500 --name $(green_tag) $(green_name) sh

sh-portal-dev: stop
	@echo "[INFO] Run docker with sh development"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -p 8080:8080 --name $(portal_tag) $(portal_name) sh

sh-red-dev: stop
	@echo "[INFO] Run red with sh development"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -e PORTAL_PATH=$(PP) -p 9000:9000 --name $(red_tag) $(red_name) sh

sh-green-dev: stop
	@echo "[INFO] Run green with sh development"
	@docker run -it -e BRONTOSAURUS_DATABASE=$(DB) -e NODE_ENV=development -p 8500:8500 --name $(green_tag) $(green_name) sh

publish-portal: stop
	@echo "[Info] Publish portal"
	@$(python3) release/portal.py

publish-red: stop
	@echo "[Info] Publish red"
	@$(python3) release/red.py

publish-green: stop
	@echo "[Info] Publish green"
	@$(python3) release/green.py

publish-all: publish-portal publish-red publish-green

build-and-publish: build-all publish-all
