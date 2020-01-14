export DOCKER_BUILDKIT=1

SECRET_FILE = secret.dat

build: build-usage

build-usage: build-intermediate
	docker build \
		-t exp-syntax-issue/usage:latest \
		-f usage/Dockerfile \
		usage/

build-intermediate: build-base
	docker build --secret id=test,src="$(SECRET_FILE)" \
		-t exp-syntax-issue/intml:latest \
		-f intermediate/Dockerfile \
		intermediate/

build-base:
	docker build \
		-t exp-syntax-issue/base:latest \
		-f base/Dockerfile \
		base/
