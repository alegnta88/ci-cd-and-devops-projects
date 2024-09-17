FROM node:20-alpine3.18

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

ENV ARIF_PAY_LIVE_SECRET=Q10ojiGjn98I4b80lIZMmxA0u5wxZlfk
ENV CHAPA_LIVE_KEY=CHAPUBK-TUELBeNeFZjlD58wKh7bfhJ3MQqrJZ39
ENV CHAPA_LIVE_SECRET=CHASECK-QNJdI19hJAcWDomylmKRBiMMQ6P7xY0n
ENV MONGODB_URL_DB=mongodb+srv://melakesisay:Yourmelak.1@dbtest.yn4qhad.mongodb.net/LiveDB?retryWrites=true&w=majority&appName=dbtest
ENV WEBHOOK_SIGNING_SECRET=whsec_5DQ7vLQxoYEWFpk9knLX57gBQICmHbRu
ENV SERVICE_BASE_URL=https://payment.purposeblacketh.com/
ENV STRIPE_SECRET_KEY=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
ENV PAYPAL_CLIENT_ID=AUPt-0liaRcHK7tRcMYuZnxEo8LzN00ZSfdDil4R7Qior7leoFwGyZPx-KTQp3u7eaJ7buIBqm9UBzl2
ENV PAYPAL_CLIENT_SECRET=EIyq8-5HQ5p3TXNmHqo4kxCaYzN3UG_r6ol9XxBEAZ1YaFofb7yK2teyw0XxURZRuI7b4Zklk5RSj1Hf
ENV PAYPAL_BASE_URL=https://api-m.paypal.com/
ENV SQUARE_BASE_URL=https://connect.squareupsandbox.com/
ENV SQUARE_ACCESS_TOKEN=EAAAl4dbGjdHk97_ckgHyZlAoCqUJhEH-75gVVqntT0hFallyW-A_y1ztHsgIvXN
ENV DB_HOST=https://147.182.241.168/
ENV DB_PORT=5433
ENV DB_USERNAME=admin
ENV DB_PASSWORD=secret
ENV DB_DATABASE=payment
ENV DB_AUTOLOAD_MODELS=true
ENV DB_SYNCHRONIZE=false
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD curl -f http://localhost:5200 || exit 1

CMD ["npm", "start"]