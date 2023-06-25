import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/task_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/todo.dart';
import '../constants/colors.dart';
import '../widgets/todo_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Задачи",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: ListView(
          children: [
            for (ToDo todoo in _foundToDo.reversed)
              ToDoItem(
                todo: todoo,
                onToDoChanged: _handleToDoChange,
              ),
          ],
        ),
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => TaskDetailPage(
            task: todo,
          ),
        ),
      );
    });
  }
}
