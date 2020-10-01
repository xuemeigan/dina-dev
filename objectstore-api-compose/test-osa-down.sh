# Short-hand way of running docker-compose with the test launch config.

export UID=$(id -u)
export GID=$(id -g)

docker-compose -p dina-object-store-api-osa-test -f ./docker-compose.base-osa-test.yml -f ./docker-compose.test-osa.yml $@ down

