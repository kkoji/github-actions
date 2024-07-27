FROM golang:1.22.2 as builder

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o api

FROM scratch
COPY --from=builder /app/api /app
ENTRYPOINT ["/app"]
