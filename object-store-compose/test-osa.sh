# Short-hand way of running docker-compose with the test launch config.

export UID=$(id -u)
export GID=$(id -g)

DC_TEST="docker-compose -p dina-object-store-api-osa-test -f ./docker-compose.base-osa-test.yml -f ./docker-compose.test-osa.yml $@ "

#docker-compose -p dina-object-store-api-osa-test -f ./docker-compose.base-osa.yml -f ./docker-compose.test-osa.yml $@ 
$DC_TEST up -d --scale mvn-test-osa=0 --scale ui=0 --scale api=0
$DC_TEST up mvn-test-osa
$DC_TEST down
