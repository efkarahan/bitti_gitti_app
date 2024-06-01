class Task {
  final String title;
  bool isDone;

  Task({
    this.title = '',
    this.isDone = false,
  });
  Task copyWith({
    String? title,
    bool? isDone,
  }) {
    return Task(
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
    );
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'],
      isDone: json['isDone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'isDone': isDone,
    };
  }

  @override
  String toString() {
    return ''' Task:{
      title: $title\n
      isDone: $isDone\n
    }''';
  }
}
