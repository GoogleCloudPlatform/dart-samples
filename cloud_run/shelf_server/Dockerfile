# Use latest stable channel SDK.
FROM dart:stable AS build

# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* .
RUN dart pub get

# Copy app source (minus anything in .dockerignore) and AOT compile it.
COPY . .
RUN dart compile exe bin/server.dart -o /server

# Build minimal image from AOT-compiled app plus essential system files.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /server /bin/

# Start server.
EXPOSE 8080
CMD ["/bin/server"]
