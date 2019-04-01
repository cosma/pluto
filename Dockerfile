FROM golang:1.11.5

ADD ./ /go/src/github.com/cosma/pluto
WORKDIR /go/src/github.com/cosma/pluto
RUN go get -u -v gopkg.in/oauth2.v3/...
RUN go get github.com/codegangsta/gin

RUN go build -a -installsuffix cgo -o /go/bin/pluto

CMD ["/go/bin/pluto"]
