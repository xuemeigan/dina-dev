# Short-hand way of running docker-compose with the dev launch config.

export UID=$(id -u)
export GID=$(id -g)

docker-compose -p object-store-api -f ./docker-compose.base-osa.yml -f ./docker-compose.dev-osa.yml $@
