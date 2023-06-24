import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/screens/home.dart';

import 'chat_page.dart';
import 'otchet.dart';

final indexInBottomNavigationBar = StateProvider<int>(
  (ref) {
    return 0;
  },
);

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Home(),
      Home(),
      ChatPage(),
      ReportPage(),
    ];
    return Scaffold(
      body: pages.elementAt(
        ref.watch(indexInBottomNavigationBar),
      ),
      // ignore: use_decorated_box
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: ref.read(indexInBottomNavigationBar),
          onTap: (value) {
            ref.read(indexInBottomNavigationBar.notifier).state = value;
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Задачи',
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Карта',
              icon: Icon(
                Icons.pin_drop,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Сообщения',
              icon: Icon(
                Icons.message,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Архив',
              icon: Icon(
                Icons.archive,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
