FROM golang:1.22.5
ENV WORKDIR /app
ENV GOROOT /usr/local/go
ADD . $WORKDIR
WORKDIR $WORKDIR
RUN make deps
VOLUME ["/app/bin"]