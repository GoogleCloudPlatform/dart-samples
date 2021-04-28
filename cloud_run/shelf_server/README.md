# Basic server example

This example demonstrates a basic server using the [Shelf] package to handle
HTTP GET requests. The server responds to requests at the root route (`/`)
with:

```
Hello, World!
```

## Running the example

### Running with the Dart SDK (Docker not required)

If you have the [Dart SDK] installed, you can run the example like this:

#### Terminal #1

```shell
dart pub get
dart run bin/server.dart
```

Output
```shell
...
Server listening on :8080
```

####  Terminal #2

```shell
curl :8080
```

Output
```shell
Hello, World!
```

####  Terminal #1

When finished, stop the server by entering `Ctrl-C`.


###  Running with Docker

If you have [Docker Desktop] installed, you can build and run with the
`docker` command:

> WARNING!
> 
> Until the Docker image for Dart has been published as an official
> image, this example will fail unless you build the `dart:stable` image on
> your own machine. You can build the image with Docker by cloning [dart-docker]
> and running the following commands:
> 
> ```shell
> cd stable/buster
> docker build -t dart:stable .
> ```
> The rest of this example will then work.

####  Terminal #1

```shell
docker build . -t hello
docker run -it --rm -p 8080:8080 --name server hello
```

Output
```shell
Server listening on :8080
```

####  Terminal #2

```shell
curl :8080
```

Output
```shell
Hello, World!
```

####  Terminal #1

When finished, stop the server with the following command:

```shell
docker kill server
```

You can confirm the server has stopped running in Terminal #2.

##  Deploy to Cloud Run

See [cloudrun.md](cloudrun.md)


<!-- Reference links -->

[dart-docker]:
https://github.com/dart-lang/dart-docker

[Dart SDK]:
https://dart.dev/get-dart

[Docker Desktop]:
https://www.docker.com/get-started

[Shelf]:
https://pub.dev/packages/shelf
