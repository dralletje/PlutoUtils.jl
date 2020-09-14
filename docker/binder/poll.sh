until $(curl --output /dev/null --silent --fail "http://localhost:8888/pluto/?token=123"); do
    printf '.'
    sleep 1
done
