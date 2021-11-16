import 'package:flutter/material.dart';
import 'package:flutter_playground/models/todo_model.dart';
import 'package:flutter_playground/services/dio_client.dart';
import 'package:flutter_playground/services/json_placeholder_service.dart';

class HomeController extends ChangeNotifier {

  final JsonPlaceholderService _service;

  HomeController(this._service);

  var todos = <TodoModel>[];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners();
  }
}
