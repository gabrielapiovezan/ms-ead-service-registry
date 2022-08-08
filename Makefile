build:
	mvn clean install; \
	docker build --force-rm -t java-k8s .

run-app:
	make stop-app; \
	make rm-app; \
	docker run --name ms-ead-service-registry -p 8761:8761 java-k8s:latest

k-build-app:
	mvn clean install; \
	docker build --force-rm -t ms-ead-service-registry .

k-deploy-app:
	kubectl apply -f k8s/app/;

k-delete-app:
	kubectl delete -f k8s/app/;