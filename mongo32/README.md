## MongoDB 3.2

### Sample configuration

```
version: '2.1'
services:
  mongo:
    image: nfqlt/mongo32
    network_mode: bridge
    ports:
      - "10.24.0.0:27017:27017"
    volumes_from:
      - service:mongoVol:rw


  mongoVol:
    image: nfqlt/mongo32-data
    network_mode: bridge
    volumes:
      - /var/lib/mongodb

```
