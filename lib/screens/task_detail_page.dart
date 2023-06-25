import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../constants/colors.dart';
import '../model/todo.dart';

class TaskDetailPage extends StatefulWidget {
  final ToDo task;
  const TaskDetailPage({super.key, required this.task});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  bool isInWork = false;
  bool isInReport = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
          iconSize: 32,
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: isInReport
              ? const EdgeInsets.only(left: 10.0)
              : const EdgeInsets.only(left: 30.0),
          child: Text(
            isInReport ? 'Отчёт' : 'Описание задачи',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  'Поле: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF414141),
                  ),
                ),
                Text(
                  'Толстый мыс',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Ячейка: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF414141),
                  ),
                ),
                Text(
                  widget.task.cell.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Text(
                  '${DateTime.now().day} ${DateFormat(DateFormat.MONTH, 'ru').format(DateTime.now())} ${DateTime.now().year}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF414141),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Описание задачи:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Container(
              height: 120,
              width: 370,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              child: const Text(
                '''Необходимо на участке найти больную
веточку и принести её в лабораторию''',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              isInReport ? 'Комментарий' : 'Средства:',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Container(
              height: 120,
              width: 370,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              child: Text(
                isInReport
                    ? 'Место для комментария'
                    : '''Описание средств для задачи''',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            if (isInReport)
              const Row(
                children: [
                  Icon(
                    Icons.attach_file,
                    color: Color(0xFF5F5F60),
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Прикрепить изображение',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5F5F60),
                    ),
                  ),
                ],
              ),
            const Spacer(),
            Center(
              child: Container(
                width: 300,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: isInWork
                      ? const Color(0xFF78A844)
                      : const Color(0xFFFF9636),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 4),
                      color: Color(0x40000000),
                      blurRadius: 4,
                    )
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    if (!isInReport) {
                      if (!isInWork) {
                        setState(() {
                          isInWork = true;
                        });
                      } else {
                        setState(() {
                          isInReport = true;
                        });
                      }
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Center(
                    child: Text(
                      isInReport
                          ? 'Отправить'
                          : isInWork
                              ? 'Завершить'
                              : 'Принять',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
