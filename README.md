# Dockerized proxigram

This is just a docker image for https://codeberg.org/ThePenguinDev/Proxigram (I don't have codeberg account so, I can't do a pr). Example usage:

```yml
version: "3"

services:
  proxigram:
    container_name: proxigram
    restart: unless-stopped
    env_file: .env
    image: ghcr.io/roytakanen/proxigram-docker:master
    ports:
      - 3000:3000

  redis:
    image: redis:7-bookworm
    restart: unless-stopped
```

Make sure to copy `.env` file and adjust it to your needs. 