up:
	docker-compose up -d

down:
	docker-compose down

cleandown:
	docker-compose down -v

exporters:
	docker build -f mikrotik/Dockerfile -t andreiker/mikrotik-exporter-arm:latest .
	docker build -f cadvisor/Dockerfile -t andreiker/cadvisor-arm:latest .
	docker build -f transmission/Dockerfile -t andreiker/transmission-exporter-arm:latest .

mikrotik:
	docker build -f mikrotik/Dockerfile -t andreiker/mikrotik-exporter-arm:latest .

cadvisor:
	docker build -f cadvisor/Dockerfile -t andreiker/cadvisor-arm:latest .

transmission:
	docker build -f transmission/Dockerfile -t andreiker/transmission-exporter-arm:latest .
