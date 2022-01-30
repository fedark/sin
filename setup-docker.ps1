docker build -t fedark/sin .

docker network create sin

docker run -d --name es --net sin -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.16.3

docker run -d --name van --net sin -p 5000:5000 fedark/sin