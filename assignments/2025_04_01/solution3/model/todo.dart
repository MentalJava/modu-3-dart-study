class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'id': id, 'title': title, 'completed': completed};
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Todo &&
        userId == other.userId &&
        id == other.id &&
        title == other.title &&
        completed == other.completed;
  }

  @override
  int get hashCode =>
      userId.hashCode ^ id.hashCode ^ title.hashCode ^ completed.hashCode;

  @override
  String toString() {
    return 'Todo(userId : $userId, id : $id, title : $title, completed : $completed)\n';
  }

  Todo copyWith({int? userId, int? id, String? title, bool? completed}) {
    return Todo(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }
}
