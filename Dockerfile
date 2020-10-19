FROM golang:1.14-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go get github.com/gorilla/mux
EXPOSE 8000
CMD ["go", "run", "main.go"]