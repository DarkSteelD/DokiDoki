// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cell _$$_CellFromJson(Map<String, dynamic> json) => _$_Cell(
      id: json['_id'] as int,
      parentField: fixedFromJson(json['parent_field'] as Map<String, dynamic>),
      grapeKind: fixedFromJson(json['grape_kind'] as Map<String, dynamic>),
      phenophase: fixedFromJson(json['phenophase'] as Map<String, dynamic>),
      points: parsePoints(json['coords'] as String),
    );

Map<String, dynamic> _$$_CellToJson(_$_Cell instance) => <String, dynamic>{
      '_id': instance.id,
      'parent_field': instance.parentField,
      'grape_kind': instance.grapeKind,
      'phenophase': instance.phenophase,
      'coords': instance.points,
    };
