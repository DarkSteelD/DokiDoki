import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/screens/task_list.dart';

import '../map_page/view/map_page.dart';
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
      const TaskList(),
      const MapPage(),
      const ChatPage(),
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
        child: Row(
          children: [
            Expanded(
              child: ColoredBox(
                color: ref.read(indexInBottomNavigationBar.notifier).state == 0
                    ? const Color(0xFF78A844)
                    : Colors.black.withOpacity(0),
                child: IconButton(
                  icon: const Icon(
                    Icons.task,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    ref.read(indexInBottomNavigationBar.notifier).state = 0;
                  },
                ),
              ),
            ),
            Expanded(
              child: ColoredBox(
                color: ref.read(indexInBottomNavigationBar.notifier).state == 1
                    ? const Color(0xFF78A844)
                    : Colors.black.withOpacity(0),
                child: IconButton(
                  icon: const Icon(
                    Icons.pin_drop,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    ref.read(indexInBottomNavigationBar.notifier).state = 1;
                  },
                ),
              ),
            ),
            Expanded(
              child: ColoredBox(
                color: ref.read(indexInBottomNavigationBar.notifier).state == 2
                    ? const Color(0xFF78A844)
                    : Colors.black.withOpacity(0),
                child: IconButton(
                  icon: const Icon(
                    Icons.message,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    ref.read(indexInBottomNavigationBar.notifier).state = 2;
                  },
                ),
              ),
            ),
            Expanded(
              child: ColoredBox(
                color: ref.read(indexInBottomNavigationBar.notifier).state == 3
                    ? const Color(0xFF78A844)
                    : Colors.black.withOpacity(0),
                child: IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    ref.read(indexInBottomNavigationBar.notifier).state = 3;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
