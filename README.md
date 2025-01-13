
```
version: "2.2"
networks:
  lan:
    external: true
    name: "lan"
services:
  transmission:
    container_name: "transmission"
    hostname: "transmission"
    image: "sleechengn/transmission:latest"
    restart: always
    environment:
      PUID: 0
      PGID: 0
    volumes:
      - "/mnt/vusb/docker/transmission/config:/config"
      - "/mnt/vusb/docker/transmission/watch:/watch"
      - "/mnt/vusb/docker/transmission/downloads:/downloads"
      - "/mnt/vusb:/satashare1-2"
    networks:
      lan:
        ipv4_address: 192.168.13.51
```
