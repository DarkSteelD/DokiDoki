import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/cell/cell.dart';

final fieldsStateHolder =
    NotifierProvider<FieldNotifier, List<Cell>>(() => FieldNotifier());

class FieldNotifier extends Notifier<List<Cell>> {
  void update(List<Cell> Function(List<Cell>) func) {
    super.state = func(super.state);
  }

  // ignore: avoid_public_notifier_properties
  @override
  List<Cell> get state => super.state;

  @override
  List<Cell> build() {
    return [
      Cell.empty().copyWith(points: [
        [879, 659 - 87],
        [1169, 374 - 87],
        [1476, 686 - 87],
        [1186, 972 - 87],
      ]),
      Cell.empty().copyWith(points: [
        [594, 372 - 87],
        [884, 87 - 87],
        [1164, 371 - 87],
        [873, 657 - 87],
      ]),
      Cell.empty().copyWith(points: [
        [304, 658 - 87],
        [594, 373 - 87],
        [874, 657 - 87],
        [583, 943 - 87],
      ]),
    ];
  }
}
