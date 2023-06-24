class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  int cell;
  String? Date;
  String? Status;

  ToDo({
    required this.id,
    required this.todoText,
    required this.cell,
    required this.Date,
    this.Status = 'Новая',
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Полить виноград', cell: 3 , isDone: true, Status: 'В работе', Date: '28.06.2023'),
      ToDo(id: '02', todoText: 'Подрезать гнилую ветку', cell: 4 ,Date: '26.06.2023'),
      ToDo(id: '03', todoText: 'Собрать ветку для лаборатории', cell: 26 ,Date: '26.06.2023'),
    ];
  }
}