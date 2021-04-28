// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:io';
import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

final _router = Router()
  ..get('/', _rootHandler);

Response _rootHandler(Request req) {
  print('Handling request for /');
  return Response.ok('Hello, World!');
}

FutureOr<void> main(List<String> args) async {
  // Don't use `localhost`, use any available container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;
  // Bind to configured PORT set by Cloud Run.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');

  final server = await serve(_router, ip, port);
  print('Server listening on :${server.port}');
}
