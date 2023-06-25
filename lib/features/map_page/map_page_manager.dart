import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:point_in_polygon/point_in_polygon.dart';
import 'fields_state_holder.dart';
import 'models/cell/cell.dart';
import 'selected_field_state_holder.dart';

final mapPageManager = Provider<MapPageManager>((ref) {
  return MapPageManager(
    fieldsStateHolder: ref.read(fieldsStateHolder.notifier),
    selectedFieldStateHolder: ref.read(selectedFieldStateHolder.notifier),
  );
});

class MapPageManager {
  final FieldNotifier fieldsStateHolder;
  final StateController<int> selectedFieldStateHolder;
  MapPageManager({
    required this.fieldsStateHolder,
    required this.selectedFieldStateHolder,
  });

  void setCells(List<Cell> cells) {
    fieldsStateHolder.update((p0) => cells);
  }

  void checkCursorPosition(Offset position) {
    for (int i = 0; i < fieldsStateHolder.state.length; i++) {
      final isInside = Poly.isPointInPolygon(
        Point(x: position.dx, y: position.dy),
        fieldsStateHolder.state[i].points
            .map((e) => Point(x: e[0], y: e[1]))
            .toList(),
      );
      if (isInside) {
        selectedFieldStateHolder.state = i;
        return;
      }
    }
    selectedFieldStateHolder.state = -1;
  }

  Offset calculateToolTipOffset(int selectedField) {
    if (selectedField == -1) {
      return const Offset(-1000, -1000);
    }
    double middleX = 0;
    double middleY = 0;
    for (var element in fieldsStateHolder.state[selectedField].points) {
      middleX += element[0];
      middleY += element[1];
    }
    middleX /= fieldsStateHolder.state[selectedField].points.length;
    middleY /= fieldsStateHolder.state[selectedField].points.length;
    return Offset(middleX + 120, middleY - 200);
  }
}
