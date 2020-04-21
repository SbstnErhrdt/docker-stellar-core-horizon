docker stop stellar
docker rm stellar
docker rmi stellar
docker build -t stellar .
docker run -t --env POSTGRES_PASSWORD="stellar" -p 8000:8000 -p 11625:11625 -p 11626:11626 -p 5432:5432 --name stellar -d stellar --testnet