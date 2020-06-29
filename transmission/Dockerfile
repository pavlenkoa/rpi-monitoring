# Builder
FROM arm32v7/golang as builder

ENV TRANSMISSION_VERSION "0.3.0"

RUN apt-get update && apt-get install -y git dmsetup && apt-get clean

RUN git clone --tag ${TRANSMISSION_VERSION} https://github.com/metalmatze/transmission-exporter.git /go/src/github.com/metalmatze/transmission-exporter

WORKDIR /go/src/github.com/metalmatze/transmission-exporter

RUN make build

# Image for usage
FROM arm32v7/debian

RUN apt-get update && apt-get install ca-certificates -y && apt-get clean autoclean && rm -rf /var/lib/apt/lists/*

COPY --from=builder /go/src/github.com/metalmatze/transmission-exporter /app/transmission-exporter

EXPOSE 19091

ENTRYPOINT ["/bin/bash", "-c", "/app/transmission-exporter"]
