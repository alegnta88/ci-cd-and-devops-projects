FROM golang:1.22.2

WORKDIR /app

COPY . .

ENV DB_DRIVER=postgres
ENV DB_SOURCE=postgres://mcms:8pBF3r08ZXesqbQAd5HU@mcms-database.clw06awc0krf.eu-north-1.rds.amazonaws.com:5432/mcms 
ENV SERVER_ADDRESS=0.0.0.0:8080
ENV TOKEN_SYMETRIC_KEY=O078pLKEoNOqoymlW9rn3LZppNu3AdnO
ENV ACCESS_TOKEN_DURATION=30m
ENV REFRESH_TOKEN_DURATION=12h
ENV PAYMENT_BASE_URL=https://payment.purposeblacketh.com/
ENV BASE_URL=http://ipi-backend-load-1266791383.eu-north-1.elb.amazonaws.com/

RUN go build -o main main.go

EXPOSE 8080

CMD ["/app/main"]