#!/usr/bin/env bash
set -eou pipefail
cd `dirname $0`
docker_image=$myusername/docker-parcel-react-demo
case "${1:-}" in
  run)
    docker run -d -v $PWD:/usr/src/app -p 3000:1234 $docker_image > container-id
    ;;
  logs)
    shift || :
    docker logs "${1:-}" `cat container-id`
    ;;
  *)
    echo "Usage: $0 <run|logs>"
esac
