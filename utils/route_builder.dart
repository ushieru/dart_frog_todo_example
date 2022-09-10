import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

class RouteBuilder {
  final Map<HttpMethod, Handler> _handlers = {};

  FutureOr<Response> hanlder(RequestContext context) {
    if (_handlers.containsKey(context.request.method)) {
      return _handlers[context.request.method]!(context);
    }
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  void get(Handler handler) => _handlers[HttpMethod.get] = handler;

  void post(Handler handler) => _handlers[HttpMethod.post] = handler;

  void delete(Handler handler) => _handlers[HttpMethod.delete] = handler;

  void head(Handler handler) => _handlers[HttpMethod.head] = handler;

  void options(Handler handler) => _handlers[HttpMethod.options] = handler;

  void patch(Handler handler) => _handlers[HttpMethod.patch] = handler;

  void put(Handler handler) => _handlers[HttpMethod.put] = handler;
}
