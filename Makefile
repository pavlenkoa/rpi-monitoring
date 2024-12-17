up:
	docker-compose up -d

down:
	docker-compose down

cleandown:
	docker-compose down -v

exporters:
	docker build -f mikrotik/Dockerfile -t andreiker/mikrotik-exporter-arm64:latest .
	docker build -f transmission/Dockerfile -t andreiker/transmission-exporter-arm64:latest .

mikrotik:
	docker build -f mikrotik/Dockerfile -t andreiker/mikrotik-exporter-arm64:1.0.12-DEVEL .
	

transmission:
	docker build -f transmission/Dockerfile -t andreiker/transmission-exporter-arm64:latest .

