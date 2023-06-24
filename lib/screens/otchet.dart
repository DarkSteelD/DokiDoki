import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Отчет'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Поле:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Введите название поля',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Клетка:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Введите значение клетки',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Описание задачи:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Введите описание задачи',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Комментарий:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Введите комментарий',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Начало:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Введите начало',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Конец:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Введите конец',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Обработка нажатия кнопки отправить
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                'Отправить',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
