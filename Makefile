up:
	docker-compose up -d

down:
	docker-compose down

cleandown:
	docker-compose down -v

build_exporters:
	docker build -f mikrotik/Dockerfile -t fortnest/mikrotik-exporter-arm:latest .
	docker build -f cadvisor/Dockerfile -t fortnest/cadvisor-arm:latest .
	docker build -f transmission/Dockerfile -t fortnest/transmission-exporter-arm:latest .

build_mikrotik:
	docker build -f mikrotik/Dockerfile -t fortnest/mikrotik-exporter-arm:latest: .

build_cadvisor:
	docker build -f cadvisor/Dockerfile -t fortnest/cadvisor-arm:latest .

build_transmission:
	docker build -f transmission/Dockerfile -t fortnest/transmission-exporter-arm:latest .
