# parsedmarc

see https://domainaware.github.io/parsedmarc/#configuration-file for configuration file and https://hub.docker.com/r/maxmindinc/geoipupdate for the maxmind ip geolocation db

docker-compose.yml:
```
version: '3.7'
services:
  parsedmarc:
    image: hase77/parsedmarc
    container_name: parsedmarc
    restart: always
    init: true
    volumes:
      - ./config/parsedmarc.ini:/etc/parsedmarc.ini:ro
      - ./geoip:/usr/share/GeoIP:ro
```
