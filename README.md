## E2E using [Webdriver.io](https://github.com/webdriverio/webdriverio) and [selenium-standalone](https://github.com/vvo/selenium-standalone) in Docker
> Sample of project running E2E tests with `wdio` and `selenium-standalone`
each existing in separate Docker instances.

See `selenium-standalone` Docker instance declaration
[Ubuntu.dockerfile](https://github.com/serbanghita/selenium-standalone-docker/blob/master/Ubuntu.dockerfile).

**Run**

1. `git clone git@github.com:serbanghita/webdriverio-docker.git`
1. `cd my-wdio`
1. `docker-compose up` (` -d --build --force-recreate`)
1. `docker-compose ps`

                Name                 Command        State           Ports
        --------------------------------------------------------------------------
        my-wdio_seleniumapp_1   npm run selenium    Up      0.0.0.0:4444->4444/tcp
        my-wdio_testapp_1       tail -f /dev/null   Up


1. `docker exec my-wdio_testapp_1 npm run test` - You should see tests pass


**Wiki**

Using `docker` CLI command

```
docker network create --driver bridge testing-lan
docker run -d -p 4444:4444 --net testing-lan --rm --name seleniumapp serbanghita/selenium-standalone
docker build -t serbanghita/my-wdio .
docker run -d --net testing-lan --rm --name myapp serbanghita/my-wdio
docker exec myapp npm test
```

Using `docker-composer` CLI command

* Start: `docker-compose up -d --build --force-recreate`
* Stop: `docker-compose stop`
* Reconfigure: `docker-compose down && docker-compose pull`