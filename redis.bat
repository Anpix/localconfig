::docker run --name redis -d redis redis-server --save 60 1 --loglevel warning -p 6379:6379

docker-compose -f redis.yaml -p redis up -d