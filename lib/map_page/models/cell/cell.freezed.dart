// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cell _$CellFromJson(Map<String, dynamic> json) {
  return _Cell.fromJson(json);
}

/// @nodoc
mixin _$Cell {
  @JsonKey(name: '_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_field', fromJson: fixedFromJson)
  String get parentField => throw _privateConstructorUsedError;
  @JsonKey(name: 'grape_kind', fromJson: fixedFromJson)
  String get grapeKind => throw _privateConstructorUsedError;
  @JsonKey(fromJson: fixedFromJson)
  String get phenophase => throw _privateConstructorUsedError;
  @JsonKey(name: 'coords', fromJson: parsePoints)
  List<List<double>> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CellCopyWith<Cell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) then) =
      _$CellCopyWithImpl<$Res, Cell>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id')
          int id,
      @JsonKey(name: 'parent_field', fromJson: fixedFromJson)
          String parentField,
      @JsonKey(name: 'grape_kind', fromJson: fixedFromJson)
          String grapeKind,
      @JsonKey(fromJson: fixedFromJson)
          String phenophase,
      @JsonKey(name: 'coords', fromJson: parsePoints)
          List<List<double>> points});
}

/// @nodoc
class _$CellCopyWithImpl<$Res, $Val extends Cell>
    implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentField = null,
    Object? grapeKind = null,
    Object? phenophase = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentField: null == parentField
          ? _value.parentField
          : parentField // ignore: cast_nullable_to_non_nullable
              as String,
      grapeKind: null == grapeKind
          ? _value.grapeKind
          : grapeKind // ignore: cast_nullable_to_non_nullable
              as String,
      phenophase: null == phenophase
          ? _value.phenophase
          : phenophase // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CellCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$_CellCopyWith(_$_Cell value, $Res Function(_$_Cell) then) =
      __$$_CellCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id')
          int id,
      @JsonKey(name: 'parent_field', fromJson: fixedFromJson)
          String parentField,
      @JsonKey(name: 'grape_kind', fromJson: fixedFromJson)
          String grapeKind,
      @JsonKey(fromJson: fixedFromJson)
          String phenophase,
      @JsonKey(name: 'coords', fromJson: parsePoints)
          List<List<double>> points});
}

/// @nodoc
class __$$_CellCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res, _$_Cell>
    implements _$$_CellCopyWith<$Res> {
  __$$_CellCopyWithImpl(_$_Cell _value, $Res Function(_$_Cell) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentField = null,
    Object? grapeKind = null,
    Object? phenophase = null,
    Object? points = null,
  }) {
    return _then(_$_Cell(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentField: null == parentField
          ? _value.parentField
          : parentField // ignore: cast_nullable_to_non_nullable
              as String,
      grapeKind: null == grapeKind
          ? _value.grapeKind
          : grapeKind // ignore: cast_nullable_to_non_nullable
              as String,
      phenophase: null == phenophase
          ? _value.phenophase
          : phenophase // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cell extends _Cell {
  const _$_Cell(
      {@JsonKey(name: '_id')
          required this.id,
      @JsonKey(name: 'parent_field', fromJson: fixedFromJson)
          required this.parentField,
      @JsonKey(name: 'grape_kind', fromJson: fixedFromJson)
          required this.grapeKind,
      @JsonKey(fromJson: fixedFromJson)
          required this.phenophase,
      @JsonKey(name: 'coords', fromJson: parsePoints)
          required final List<List<double>> points})
      : _points = points,
        super._();

  factory _$_Cell.fromJson(Map<String, dynamic> json) => _$$_CellFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int id;
  @override
  @JsonKey(name: 'parent_field', fromJson: fixedFromJson)
  final String parentField;
  @override
  @JsonKey(name: 'grape_kind', fromJson: fixedFromJson)
  final String grapeKind;
  @override
  @JsonKey(fromJson: fixedFromJson)
  final String phenophase;
  final List<List<double>> _points;
  @override
  @JsonKey(name: 'coords', fromJson: parsePoints)
  List<List<double>> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'Cell(id: $id, parentField: $parentField, grapeKind: $grapeKind, phenophase: $phenophase, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cell &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentField, parentField) ||
                other.parentField == parentField) &&
            (identical(other.grapeKind, grapeKind) ||
                other.grapeKind == grapeKind) &&
            (identical(other.phenophase, phenophase) ||
                other.phenophase == phenophase) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentField, grapeKind,
      phenophase, const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CellCopyWith<_$_Cell> get copyWith =>
      __$$_CellCopyWithImpl<_$_Cell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellToJson(
      this,
    );
  }
}

abstract class _Cell extends Cell {
  const factory _Cell(
      {@JsonKey(name: '_id')
          required final int id,
      @JsonKey(name: 'parent_field', fromJson: fixedFromJson)
          required final String parentField,
      @JsonKey(name: 'grape_kind', fromJson: fixedFromJson)
          required final String grapeKind,
      @JsonKey(fromJson: fixedFromJson)
          required final String phenophase,
      @JsonKey(name: 'coords', fromJson: parsePoints)
          required final List<List<double>> points}) = _$_Cell;
  const _Cell._() : super._();

  factory _Cell.fromJson(Map<String, dynamic> json) = _$_Cell.fromJson;

  @override
  @JsonKey(name: '_id')
  int get id;
  @override
  @JsonKey(name: 'parent_field', fromJson: fixedFromJson)
  String get parentField;
  @override
  @JsonKey(name: 'grape_kind', fromJson: fixedFromJson)
  String get grapeKind;
  @override
  @JsonKey(fromJson: fixedFromJson)
  String get phenophase;
  @override
  @JsonKey(name: 'coords', fromJson: parsePoints)
  List<List<double>> get points;
  @override
  @JsonKey(ignore: true)
  _$$_CellCopyWith<_$_Cell> get copyWith => throw _privateConstructorUsedError;
}
