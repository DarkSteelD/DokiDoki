import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/constants/colors.dart';

import '../map_page_manager.dart';
import 'field_tool_tip.dart';
import 'fields_painter.dart';
import '../fields_state_holder.dart';
import '../selected_field_state_holder.dart';

class MapPage extends ConsumerWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fields = ref.watch(fieldsStateHolder);
    return Scaffold(
      body: Stack(
        children: [
          ColoredBox(
            color: tdBGColor,
            child: InteractiveViewer(
              constrained: false,
              boundaryMargin: const EdgeInsets.all(50),
              minScale: 0.4,
              maxScale: 3,
              child: SizedBox(
                width: 1440,
                height: 940,
                child: Consumer(
                  builder: (context, ref, child) {
                    final selectedField = ref.watch(selectedFieldStateHolder);
                    final manager = ref.read(mapPageManager);
                    return Stack(
                      children: [
                        Image.network(
                          'https://i.ibb.co/9yL6LxX/hard-Field.png',
                        ),
                        GestureDetector(
                          onTapDown: (details) {},
                          child: MouseRegion(
                            onHover: (cursor) {
                              manager.checkCursorPosition(cursor.localPosition);
                            },
                            child: CustomPaint(
                              painter: FieldsPainter(
                                fields,
                                [selectedField],
                              ),
                              size: const Size(1440, 940),
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: selectedField != -1 ? 1 : 0,
                          duration: const Duration(milliseconds: 300),
                          child: selectedField != -1
                              ? Transform.translate(
                                  offset: manager
                                      .calculateToolTipOffset(selectedField),
                                  child:
                                      FieldToolTip(indexOfField: selectedField),
                                )
                              : const SizedBox(),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
