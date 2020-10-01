# Short-hand way of running docker-compose with the test launch config.

export UID=$(id -u)
export GID=$(id -g)

DC_TEST="docker-compose -p dina-agent-api-test -f ./docker-compose.base-test.yml -f ./docker-compose.test.yml $@ "

#docker-compose -p dina-agent-api-osa-test -f ./docker-compose.base-osa.yml -f ./docker-compose.test-osa.yml $@ 
$DC_TEST up -d --scale mvn-test-agent-api=0 --scale ui=0 --scale api=0
$DC_TEST up mvn-test-agent-api
#$DC_TEST down
