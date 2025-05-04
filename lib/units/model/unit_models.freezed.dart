// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MathUnit _$MathUnitFromJson(Map<String, dynamic> json) {
  return _Unit.fromJson(json);
}

/// @nodoc
mixin _$MathUnit {
  String get name => throw _privateConstructorUsedError;
  List<UnitLesson> get lessons => throw _privateConstructorUsedError;

  /// Serializes this MathUnit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MathUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MathUnitCopyWith<MathUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MathUnitCopyWith<$Res> {
  factory $MathUnitCopyWith(MathUnit value, $Res Function(MathUnit) then) =
      _$MathUnitCopyWithImpl<$Res, MathUnit>;
  @useResult
  $Res call({String name, List<UnitLesson> lessons});
}

/// @nodoc
class _$MathUnitCopyWithImpl<$Res, $Val extends MathUnit>
    implements $MathUnitCopyWith<$Res> {
  _$MathUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MathUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lessons = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<UnitLesson>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitImplCopyWith<$Res> implements $MathUnitCopyWith<$Res> {
  factory _$$UnitImplCopyWith(
          _$UnitImpl value, $Res Function(_$UnitImpl) then) =
      __$$UnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<UnitLesson> lessons});
}

/// @nodoc
class __$$UnitImplCopyWithImpl<$Res>
    extends _$MathUnitCopyWithImpl<$Res, _$UnitImpl>
    implements _$$UnitImplCopyWith<$Res> {
  __$$UnitImplCopyWithImpl(_$UnitImpl _value, $Res Function(_$UnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of MathUnit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lessons = null,
  }) {
    return _then(_$UnitImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<UnitLesson>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitImpl implements _Unit {
  const _$UnitImpl(
      {required this.name, required final List<UnitLesson> lessons})
      : _lessons = lessons;

  factory _$UnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitImplFromJson(json);

  @override
  final String name;
  final List<UnitLesson> _lessons;
  @override
  List<UnitLesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'MathUnit(name: $name, lessons: $lessons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_lessons));

  /// Create a copy of MathUnit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitImplCopyWith<_$UnitImpl> get copyWith =>
      __$$UnitImplCopyWithImpl<_$UnitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitImplToJson(
      this,
    );
  }
}

abstract class _Unit implements MathUnit {
  const factory _Unit(
      {required final String name,
      required final List<UnitLesson> lessons}) = _$UnitImpl;

  factory _Unit.fromJson(Map<String, dynamic> json) = _$UnitImpl.fromJson;

  @override
  String get name;
  @override
  List<UnitLesson> get lessons;

  /// Create a copy of MathUnit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitImplCopyWith<_$UnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnitLesson _$UnitLessonFromJson(Map<String, dynamic> json) {
  return _UnitLesson.fromJson(json);
}

/// @nodoc
mixin _$UnitLesson {
  String get id => throw _privateConstructorUsedError;
  LessonType get type => throw _privateConstructorUsedError;
  String get problemGeneratorId => throw _privateConstructorUsedError;

  /// Serializes this UnitLesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnitLesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitLessonCopyWith<UnitLesson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitLessonCopyWith<$Res> {
  factory $UnitLessonCopyWith(
          UnitLesson value, $Res Function(UnitLesson) then) =
      _$UnitLessonCopyWithImpl<$Res, UnitLesson>;
  @useResult
  $Res call({String id, LessonType type, String problemGeneratorId});
}

/// @nodoc
class _$UnitLessonCopyWithImpl<$Res, $Val extends UnitLesson>
    implements $UnitLessonCopyWith<$Res> {
  _$UnitLessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitLesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? problemGeneratorId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LessonType,
      problemGeneratorId: null == problemGeneratorId
          ? _value.problemGeneratorId
          : problemGeneratorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitLessonImplCopyWith<$Res>
    implements $UnitLessonCopyWith<$Res> {
  factory _$$UnitLessonImplCopyWith(
          _$UnitLessonImpl value, $Res Function(_$UnitLessonImpl) then) =
      __$$UnitLessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, LessonType type, String problemGeneratorId});
}

/// @nodoc
class __$$UnitLessonImplCopyWithImpl<$Res>
    extends _$UnitLessonCopyWithImpl<$Res, _$UnitLessonImpl>
    implements _$$UnitLessonImplCopyWith<$Res> {
  __$$UnitLessonImplCopyWithImpl(
      _$UnitLessonImpl _value, $Res Function(_$UnitLessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitLesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? problemGeneratorId = null,
  }) {
    return _then(_$UnitLessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LessonType,
      problemGeneratorId: null == problemGeneratorId
          ? _value.problemGeneratorId
          : problemGeneratorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitLessonImpl implements _UnitLesson {
  const _$UnitLessonImpl(
      {required this.id, required this.type, required this.problemGeneratorId});

  factory _$UnitLessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitLessonImplFromJson(json);

  @override
  final String id;
  @override
  final LessonType type;
  @override
  final String problemGeneratorId;

  @override
  String toString() {
    return 'UnitLesson(id: $id, type: $type, problemGeneratorId: $problemGeneratorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitLessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.problemGeneratorId, problemGeneratorId) ||
                other.problemGeneratorId == problemGeneratorId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, problemGeneratorId);

  /// Create a copy of UnitLesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitLessonImplCopyWith<_$UnitLessonImpl> get copyWith =>
      __$$UnitLessonImplCopyWithImpl<_$UnitLessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitLessonImplToJson(
      this,
    );
  }
}

abstract class _UnitLesson implements UnitLesson {
  const factory _UnitLesson(
      {required final String id,
      required final LessonType type,
      required final String problemGeneratorId}) = _$UnitLessonImpl;

  factory _UnitLesson.fromJson(Map<String, dynamic> json) =
      _$UnitLessonImpl.fromJson;

  @override
  String get id;
  @override
  LessonType get type;
  @override
  String get problemGeneratorId;

  /// Create a copy of UnitLesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitLessonImplCopyWith<_$UnitLessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
