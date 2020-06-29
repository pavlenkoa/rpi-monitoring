FROM arm32v7/ubuntu:latest

COPY entrypoint.sh /
COPY mikrotik-exporter /app/

RUN chmod +x /entrypoint.sh /app/mikrotik-exporter

ENV PATH "$PATH=/app/"

EXPOSE 9436

ENTRYPOINT ["/bin/bash", "-c", "/entrypoint.sh"]
