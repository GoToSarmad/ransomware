FROM golang:1.18-bullseye
ENV WORKDIR /app
ENV GOROOT /usr/local/go
ADD . $WORKDIR
WORKDIR $WORKDIR
RUN make deps
VOLUME ["/app/bin"]