// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cell.freezed.dart';
part 'cell.g.dart';

@freezed
class Cell with _$Cell {
  const Cell._();

  const factory Cell({
    @JsonKey(name: '_id') required int id,
    @JsonKey(name: 'parent_field', fromJson: fixedFromJson)
    required String parentField,
    @JsonKey(name: 'grape_kind', fromJson: fixedFromJson)
    required String grapeKind,
    @JsonKey(fromJson: fixedFromJson) required String phenophase,
    @JsonKey(name: 'coords', fromJson: parsePoints)
    required List<List<double>> points,
  }) = _Cell;

  static Cell empty() => const Cell(
        id: 0,
        parentField: 'Толстый мыс',
        grapeKind: 'Белый',
        phenophase: 'Первый лист',
        points: [],
      );

  factory Cell.fromJson(Map<String, dynamic> json) => _$CellFromJson(json);
}

String fixedFromJson(Map<String, dynamic> json) {
  return json['name'];
}

List<List<double>> parsePoints(String json) {
  List<dynamic> jsonList = jsonDecode(json);
  List<List<double>> pointList = jsonList
      .map((e) => (e as List<dynamic>).map((e) => (e as double)).toList())
      .toList();

  pointList = pointList.map((e) => e..[1] = e[1] - 87).toList();
  return pointList;
}
