REPO=gcr.io/curation-interface-308713
SERVER_IMAGE=rest-server
SERVER_TAG=0.1

LOG_IMAGE=schema-logger
LOG_TAG=0.1

build:
	docker build -t $(SERVER_IMAGE):$(SERVER_TAG) . -f Dockerfile --no-cache
	docker tag $(SERVER_IMAGE):$(SERVER_TAG) $(REPO)/$(SERVER_IMAGE):$(SERVER_TAG)
	docker push $(REPO)/$(SERVER_IMAGE):$(SERVER_TAG)

	docker build -t $(LOG_IMAGE):$(LOG_TAG) . -f Dockerfile-logs
	docker tag $(LOG_IMAGE):$(LOG_TAG) $(REPO)/$(LOG_IMAGE):$(LOG_TAG)
	docker push $(REPO)/$(LOG_IMAGE):$(LOG_TAG)
