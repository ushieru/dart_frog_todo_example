import 'package:uuid/uuid.dart';

enum Status { open, inProgress, close }

class Todo {
  Todo(String? id, this.title, this.description, this.status)
      : id = id ?? const Uuid().v4();

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      json['id'] as String,
      json['title'] as String,
      json['description'] as String,
      Status.values
          .firstWhere((status) => json['status'] as String == status.name),
    );
  }

  String id;
  String title;
  String description;
  Status status;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'status': status.name
    };
  }
}
