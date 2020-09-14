# Short-hand way of running docker-compose with the dev launch config.

export UID=$(id -u)
export GID=$(id -g)

docker-compose -p seqdb-api -f ./docker-compose.base-seqdb.yml -f ./docker-compose.dev-seqdb.yml $@
