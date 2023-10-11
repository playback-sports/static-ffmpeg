DOCKER_HOST="ssh://docker-builder@34.71.58.104"
IMAGE_TAG="latest"

docker-build:
	DOCKER_HOST=$(DOCKER_HOST) docker build  -t gcr.io/playback-294716/static-ffmpeg:${IMAGE_TAG} .

docker-push:
	DOCKER_HOST=$(DOCKER_HOST) docker push gcr.io/playback-294716/static-ffmpeg:${IMAGE_TAG}