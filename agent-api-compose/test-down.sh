# Short-hand way of running docker-compose with the test launch config.

export UID=$(id -u)
export GID=$(id -g)

docker-compose -p  dina-agent-api-test -f ./docker-compose.base.yml -f ./docker-compose.test.yml $@ down


