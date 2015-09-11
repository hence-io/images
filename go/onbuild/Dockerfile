FROM hence/go:latest

WORKDIR /app

# this will ideally be built by the ONBUILD below ;)
CMD ["go-wrapper", "run"]

ONBUILD COPY . /app
ONBUILD RUN go-wrapper download
ONBUILD RUN go-wrapper install
