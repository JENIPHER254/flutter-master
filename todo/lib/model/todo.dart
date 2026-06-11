class ToDo {
  // declaring the values
  String? id;
  String? todoText;
  bool isDone;

  // setting instances
  ToDo({this.id, this.todoText, this.isDone = false});

  // setting todo array
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'washing clothes', isDone: true),
      ToDo(id: '02', todoText: 'executive meeting', isDone: false),
    ];
  }
}
