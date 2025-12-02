FROM golang:1.24

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o orders-api ./cmd/ordersystem

EXPOSE 8000 50051

CMD ["./orders-api"]
