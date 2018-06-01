
pushd ./examples/listener
   GOOS=linux GOARCH=amd64 go build
popd

pushd ./examples/pinger
   GOOS=linux GOARCH=amd64 go build
popd
docker build . -t datianshi/multicast-listener -f Dockerfile_listener
docker build . -t datianshi/multicast-pinger -f Dockerfile_pinger
