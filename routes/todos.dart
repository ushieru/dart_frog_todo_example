import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:uuid/uuid.dart';

import '../models/todo.dart';
import '../utils/route_builder.dart';

final _todos = [];

final _routeBuilder = RouteBuilder()
  ..get((context) {
    return Response.json(body: _todos);
  })
  ..post((context) async {
    final jsonTodo = await context.request.json();
    jsonTodo['status'] = 'open';
    jsonTodo['id'] = const Uuid().v4();

    final newTodo = Todo.fromJson(jsonTodo);
    _todos.add(newTodo);

    return Response.json(body: newTodo.toJson());
  });

FutureOr<Response> onRequest(RequestContext context) async =>
    _routeBuilder.hanlder(context);
