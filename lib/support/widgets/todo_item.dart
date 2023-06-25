import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../features/task_list/model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final Function onToDoChanged;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Container(
        width: 352,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              color: Color(0x40000000),
            )
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            onToDoChanged(todo);
          },
          child: Padding(
            padding: const EdgeInsets.only(
              left: 19,
              right: 12,
              bottom: 11,
              top: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      todo.todoText!,
                      style: TextStyle(
                        fontSize: 16,
                        color: tdBlack,
                        fontWeight: todo.isDone ? FontWeight.bold : null,
                      ),
                    ),
                    const Spacer(),
                    if (todo.isDone)
                      Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDC0505),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text(
                      'Ячейка: ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF414141),
                      ),
                    ),
                    Text(
                      '${todo.cell}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: tdBlack,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${DateTime.now().day} ${DateFormat(DateFormat.MONTH, 'ru').format(DateTime.now())} ${DateTime.now().year} ${DateFormat(DateFormat.HOUR24_MINUTE).format(DateTime.now())}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF414141),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 108,
                      child: ElevatedButton(
                        onPressed: () {
                          onToDoChanged(todo);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          disabledForegroundColor:
                              Colors.black.withOpacity(0.38),
                          side: const BorderSide(color: Colors.black),
                          // Черная граница
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              45.0,
                            ), // Скругление углов кнопки
                          ),
                        ),
                        child: Text(
                          'Подробнее',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Новая задача',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: const Color(0xC9FF7A00),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
