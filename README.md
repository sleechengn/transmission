
```
version: "2.2"
networks:
  lan13:
    name: lan13
    driver: macvlan
    driver_opts:
      parent: eth1
    ipam:
      config:
        - subnet: "192.168.13.0/24"
          gateway: "192.168.13.1"
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
      - "/mnt/rfs/docker/transmission/config:/config"
      - "/mnt/rfs/docker/transmission/watch:/watch"
      - "/mnt/rfs/docker/transmission/downloads:/downloads"
    networks:
      lan:
        ipv4_address: 192.168.13.51
```
