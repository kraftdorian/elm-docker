# elm-docker
Simple starter repo that acts as a development playground for Elm 0.19.1

## How to
```bash
docker image build -t elm-docker .
```

### Windows
```bash
docker container run --rm -v ${pwd}:/app -p 8000:8000 -it elm-docker /bin/ash
```

inside container:
```bash
cd /app
elm reactor
```