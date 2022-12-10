Docker MongoDB Alpine Image
==================================================

Alpine Linux with MongoDB.

```
# Basic run
$ docker run -tdi -p 27017:27017 primdev/mongo-alpine

# Run with data mounted to the native host
$ docker run --rm -tdi --name mongo -v ~/mongoDbData:/data/db -p 27017:27017 primdev/mongo-alpine
```

With the provided `docker-compose` file, you can also run:

```
$ docker-compose up -d mongodb
$ docker-compose run client
```


- [View on Docker Hub][1]
- [View on GitHub][2]

[1]: https://hub.docker.com/r/primdev/mongo-alpine
[2]: https://github.com/PrimWeb/Docker-Mongo-Alpine