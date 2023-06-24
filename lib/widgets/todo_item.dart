import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (todo.isDone)
                  Container(
                    width: 10,
                    height: 10,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                SizedBox(height: 8.0),
                Text(
                  todo.todoText!,
                  style: TextStyle(
                    fontSize: 16,
                    color: tdBlack,
                    fontWeight: todo.isDone ?  FontWeight.bold : null,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Cell: ${todo.cell}',
                  style: TextStyle(
                    fontSize: 12,
                    color: tdBlack,
                  ),
                ),
                SizedBox(height: 8.0),

                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Прозрачный цвет фона
                    onSurface: Colors.black, // Цвет текста и границы кнопки
                    side: BorderSide(color: Colors.black),
                    // Черная граница
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Скругление углов кнопки
                    ),
                  ),
                  child: Text('Подробнее',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  todo.Date!,
                  style: TextStyle(
                    fontSize: 12,
                    color: tdBlack,
                  ),
                ),
                Text(
                  'Cтатус: ${todo.Status}',
                  style: TextStyle(
                    fontSize: 12,
                    color: tdBlack,
                  ),
                ),
                SizedBox(height: 8.0),

              ],
            ),
          ],
        ),


      ),
    );
  }
}
