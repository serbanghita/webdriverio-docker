docker network create --driver bridge testing-lan
docker run -d -p 4444:4444 --net testing-lan --rm --name seleniumapp serbanghita/selenium-standalone
docker build -t serbanghita/my-wdio .
docker run -d --net testing-lan --rm --name e2eapp serbanghita/my-wdio
# docker exec e2eapp npm test