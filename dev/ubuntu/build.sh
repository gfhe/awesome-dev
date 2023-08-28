docker build . -t hgfkeep/ubuntu:base
docker build . -f Dockerfile-cpp -t hgfkeep/ubuntu:cpp
docker build . -f Dockerfile-py -t hgfkeep/ubuntu:py

docker push hgfkeep/ubuntu:base
docker push hgfkeep/ubuntu:cpp
docker push hgfkeep/ubuntu:py