FROM node:16-alpine

WORKDIR /app

COPY package.json /
RUN npm install

COPY . .

ENV PRODUCTION_USER=admin
ENV PRODUCTION_PASSWORD=fc1o1H3C3qznK0aii4NJ
ENV PRODUCTION_DATABASE=gcrsdb
ENV PRODUCTION_HOST=gcrsdb.clw06awc0krf.eu-north-1.rds.amazonaws.com
ENV PRODUCTION_CONNECTIONURL=gcrsdb.clw06awc0krf.eu-north-1.rds.amazonaws.com
ENV PRODUCTION_PORT=3306
ENV DIALECT=mysql
ENV NODE_ENV=production
ENV SECRETKEY=ADMIN
# Email smtp credent
ENV EMAIL_HOST=kegeberewtech.com
ENV EMAIL_USER=dev@kegeberewtech.com
ENV EMAIL_PASSWORD=o2!Un74^nId3
ENV EMAIL_PORT=587

ENV EMAIL_FROM_NAME=GCRSM
ENV EMAIL_FROM_EMAIL=dev@kegeberewtech.com


# Google auth credential
ENV GOOGLE_CLIENT_ID=1070438951881-4ajrmhmba1n0gh190gfbb99f14ar2aft.apps.googleusercontent.com
ENV GOOGLE_CLIENT_SECRET=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

# Facebook auth credential
ENV FACEBOOK_APP_ID=960075315491139
ENV FACEBOOK_APP_SECRET=

CMD ["npm", "start"]