FROM golang:latest

# Set up workdir
WORKDIR /go/src/github.com/coreos/prometheus-operator

ADD . .
RUN go build ./cmd/operator

ENTRYPOINT ["./operator"]
