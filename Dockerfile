#builder
FROM bitnami/minideb:bookworm AS builder

RUN apt-get update -y && apt-get install -y git nodejs npm

WORKDIR /app

RUN git clone https://codeberg.org/ThePenguinDev/proxigram.git .

RUN npm install

RUN npm run build

# I am lazy and do not want to implement multistage builds so:

RUN apt-get -y remove git && apt-get -y purge git 

CMD ["npm", "start"]
