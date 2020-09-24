# raspi2png - docker container doing Raspberry PI screenshots each minute and storing them for 1 day

# Build

```
docker build . -t raspi2png:dev
```

# Run

Using Docker Compose
```
---
version: "2.1"
services:
  raspi2png:
    container_name: raspi2png
    image: raspi2png:dev
    restart: always
    volumes:
      - /opt/vc:/opt/vc
      - /media/ssd256/monitoring:/export
    devices:
      - /dev/vchiq
```

# Configuration

Mount your folder for storing screenshots to /export folder of container

# Disclaimer

Based on https://github.com/AndrewFromMelbourne/raspi2png