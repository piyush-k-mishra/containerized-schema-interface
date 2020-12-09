REPO=gcr.io/dcs-project-298021
IMAGE=rest-server
TAG=0.2

build:
	docker build -t $(IMAGE):$(TAG) . -f Dockerfile
	docker tag $(IMAGE):$(TAG) $(REPO)/$(IMAGE):$(TAG)
	docker push $(REPO)/$(IMAGE):$(TAG)
