# Builder
FROM arm32v7/golang as builder

ENV BRANCH "master"

RUN apt-get update && apt-get install -y git dmsetup && apt-get clean

RUN git clone --branch ${BRANCH} https://github.com/metalmatze/alertmanager-bot.git /go/src/github.com/metalmatze/alertmanager-bot

WORKDIR /go/src/github.com/metalmatze/alertmanager-bot

RUN make build

# Image for usage
FROM arm32v7/debian

RUN apt-get update && apt-get install ca-certificates -y && apt-get clean autoclean && rm -rf /var/lib/apt/lists/*

COPY --from=builder /go/src/github.com/metalmatze/alertmanager-bot/alertmanager-bot /app/alertmanager-bot

RUN chown 1000:1000 -R /app

RUN chmod +x /app/alertmanager-bot

EXPOSE 8187

ENTRYPOINT ["/app/alertmanager-bot"]
