# docker-alpine-selenium

Small Docker images for Selenium Grid

```
$ docker images
REPOSITORY                                   TAG       SIZE
alpine                                       3.4       4.799 MB
sunx2ych/alpine-selenium-base                2.53.1    123.3 MB
sunx2ych/alpine-selenium-hub                 2.53.1    123.3 MB
sunx2ych/alpine-selenium-node-base           2.53.1    153.6 MB
sunx2ych/alpine-selenium-node-firefox-esr    2.53.1    308.1 MB
```

### How to build

```
$ docker-compose build --force-rm --no-cache
```

### How to run tests

```
$ docker-compose up --force-recreate tests
$ docker-compose down
```

### To-Do List

- [x] alpine:3.4
- [ ] chromium
- [ ] standalone (firefox & chromium)
- [ ] publish to Docker Hub
- [ ] supervisord
