## Sample Webdriver.io project
> For testing purposes.

1. `npm install`
2. `npm run selenium` (new tab)
3. `npm run test`

With Docker:

* Start: `docker-compose up -d --build --force-recreate`
* Stop: `docker-compose stop`
* Reconfigure: `docker-compose down && docker-compose pull`

```
docker-compose rm --all &&
 docker-compose pull &&
 docker-compose build --no-cache &&
 docker-compose up -d --force-recreate &&
```