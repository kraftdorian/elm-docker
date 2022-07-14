# elm-docker
Simple starter repo that acts as a development playground for Elm 0.19.1

## How to
### Windows
```bash
docker container run --rm -v ${pwd}:/app -p 8000:8000 -it kraftdorian/elm:0.19.1-alpine3.16 /bin/ash
```

inside container:
```bash
cd /app
elm reactor
```