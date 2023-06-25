import 'package:flutter/material.dart';
import '../models/cell/cell.dart';

class FieldsPainter extends CustomPainter {
  final List<Cell> fields;
  final List<int> selectedFields;
  FieldsPainter(this.fields, this.selectedFields);

  @override
  void paint(Canvas canvas, Size size) {
    // points
    for (int i = 0; i < fields.length; i++) {
      final Rect backgroundRect = Offset.zero & size;
      canvas.clipRect(backgroundRect);

      Path fieldsPath = Path();
      fieldsPath.moveTo(
        fields[i].points[0][0],
        fields[i].points[0][1],
      );
      for (int j = 1; j < fields[i].points.length; j++) {
        fieldsPath.lineTo(
          fields[i].points[j][0],
          fields[i].points[j][1],
        );
      }

      final isSelectedField = selectedFields.contains(i);
      final fillColor = isSelectedField
          ? Colors.green.withOpacity(0.5)
          : Colors.green.withOpacity(0.3);
      final borderColor =
          isSelectedField ? Colors.black : Colors.black.withOpacity(0.7);
      canvas.drawPath(
        fieldsPath,
        Paint()
          ..style = PaintingStyle.fill
          ..color = fillColor,
      );
      fieldsPath.lineTo(
        fields[i].points[0][0],
        fields[i].points[0][1],
      );
      canvas.drawPath(
        fieldsPath,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = borderColor,
      );
    }
  }

  @override
  bool shouldRepaint(FieldsPainter oldDelegate) => true;
}
