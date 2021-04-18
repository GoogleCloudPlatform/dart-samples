// [START functions_helloworld_get]
import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';
// [END functions_helloworld_get]

// [START functions_helloworld_get]
@CloudFunction()
Response function(Request request) => Response.ok('Hello, World!');
// [END functions_helloworld_get]
