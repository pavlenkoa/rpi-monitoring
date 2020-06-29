FROM arm32v7/ubuntu:latest

RUN apt-get update && \
    apt-get install ca-certificates -y && \
    apt-get clean autoclean && \
    rm -rf /var/lib/apt/lists/*

COPY ./transmission-exporter /app/transmission-exporter

RUN chmod +x /app/transmission-exporter

EXPOSE 19091

ENTRYPOINT ["/app/transmission-exporter"]
