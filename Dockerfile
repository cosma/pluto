FROM golang:1.11.5

RUN mkdir -p /go/bin
ADD ./ /go/src/github.com/cosma/pluto
WORKDIR /go/src/github.com/cosma/pluto
RUN go get github.com/codegangsta/gin
RUN go get -u -v gopkg.in/oauth2.v3/...

CMD ["gin", "run", "main.go"]
