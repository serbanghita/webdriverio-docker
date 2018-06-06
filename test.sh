docker network create --driver bridge testing_network
docker run -d -p 4444:4444 --net testing_network --rm --name seleniumapp serbanghita/selenium-standalone
docker build -t serbanghita/my-wdio .
docker run -it --net testing_network --rm --name e2eapp serbanghita/my-wdio
# docker exec e2eapp npm test