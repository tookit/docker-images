## Node.js toolbox

### Info
This is an image of Node.js LTS version  in toolbox format

### Global npm packages
This image has pre-installed npm global packages

 - gulp-cli
 - grunt-cli
 - node-sass
 - bower

### Configuration
Available binary paths for export:

- /usr/bin/node
- /usr/bin/npm
- /usr/bin/gulp
- /usr/bin/grunt
- /usr/bin/node-sass
- /usr/bin/bower
- /usr/bin/uglifycss
- /usr/bin/uglifyjs
- /usr/bin/tsc
- /usr/bin/tslint

### Sample configuration
```
version: '2.1'
services:
  node:
    image: nfqlt/node4
    network_mode: bridge
    volumes:
      - './src:/home/project/src'
      - /tmp


  dev:
    image: nfqlt/php56-dev
    network_mode: bridge
    volumes_from:
      - service:node:rw
    volumes:
      - './src:/home/project/src'
      - '/home/project/.ssh:/home/project/.ssh'
      - '/etc/ssh:/etc/ssh'
      - '/etc/gitconfig:/etc/gitconfig'
      - '/etc/environment:/etc/environment-vm:ro'
    environment:
      NFQ_REMOTE_TOOL_NODE: >
        /usr/bin/npm
        /usr/bin/node
        /usr/bin/grunt


  linker:
    image: nfqlt/linker17ce
    network_mode: bridge
    volumes:
      - /run/docker.sock:/run/docker.sock
```

