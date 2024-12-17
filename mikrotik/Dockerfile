# Builder
FROM arm64v8/golang as builder

ENV MIKROTIK_EXPORTER_VERSION "1.0.12-DEVEL"

RUN apt-get update && apt-get install -y git dmsetup wget && apt-get clean

#RUN git clone --branch ${MIKROTIK_EXPORTER_VERSION} https://github.com/nshttpd/mikrotik-exporter.git /go/src/github.com/nshttpd/mikrotik-exporter

#WORKDIR /go/src/github.com/nshttpd/mikrotik-exporter

#RUN make build

WORKDIR /go/

RUN wget https://github.com/nshttpd/mikrotik-exporter/releases/download/1.0.12-DEVEL/mikrotik-exporter_linux_arm64

# Image for usage
FROM arm64v8/debian

#COPY --from=builder /go/src/github.com/nshttpd/mikrotik-exporter/mikrotik-exporter /app/mikrotik-exporter
COPY --from=builder /go/mikrotik-exporter_linux_arm64 /app/mikrotik-exporter

RUN chown 1000:1000 -R /app

RUN chmod +x /app/mikrotik-exporter

EXPOSE 9436

ENTRYPOINT ["/app/mikrotik-exporter", "-config-file", "/app/conf/config.yml"]
