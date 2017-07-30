# docker-alpine-selenium

Small Docker images for Selenium Grid

```
$ docker images
REPOSITORY                                         TAG       SIZE
alpine                                             edge        4.0 MB
sunx2ych/alpine-selenium-base                      2.53.1     95.7 MB
sunx2ych/alpine-selenium-hub                       2.53.1     95.7 MB
sunx2ych/alpine-selenium-node-base                 2.53.1    125.9 MB
sunx2ych/alpine-selenium-node-firefox-esr          2.53.1    300.2 MB
sunx2ych/alpine-selenium-standalone-firefox-esr    2.53.1    300.2 MB
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

- [ ] selenium v3
- [ ] headless chromium
- [ ] healthcheck
- [ ] publish to Docker Hub
- [ ] [dobi](https://dnephin.github.io/dobi/) (?)
- [ ] supervisord (?)
