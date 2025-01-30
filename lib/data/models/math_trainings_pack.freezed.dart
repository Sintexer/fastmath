// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'math_trainings_pack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MathTrainingsPack {
  String get name => throw _privateConstructorUsedError;
  List<MathTraining> get trainings => throw _privateConstructorUsedError;

  /// Create a copy of MathTrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MathTrainingsPackCopyWith<MathTrainingsPack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MathTrainingsPackCopyWith<$Res> {
  factory $MathTrainingsPackCopyWith(
          MathTrainingsPack value, $Res Function(MathTrainingsPack) then) =
      _$MathTrainingsPackCopyWithImpl<$Res, MathTrainingsPack>;
  @useResult
  $Res call({String name, List<MathTraining> trainings});
}

/// @nodoc
class _$MathTrainingsPackCopyWithImpl<$Res, $Val extends MathTrainingsPack>
    implements $MathTrainingsPackCopyWith<$Res> {
  _$MathTrainingsPackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MathTrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? trainings = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      trainings: null == trainings
          ? _value.trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<MathTraining>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MathTrainingsPackImplCopyWith<$Res>
    implements $MathTrainingsPackCopyWith<$Res> {
  factory _$$MathTrainingsPackImplCopyWith(_$MathTrainingsPackImpl value,
          $Res Function(_$MathTrainingsPackImpl) then) =
      __$$MathTrainingsPackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<MathTraining> trainings});
}

/// @nodoc
class __$$MathTrainingsPackImplCopyWithImpl<$Res>
    extends _$MathTrainingsPackCopyWithImpl<$Res, _$MathTrainingsPackImpl>
    implements _$$MathTrainingsPackImplCopyWith<$Res> {
  __$$MathTrainingsPackImplCopyWithImpl(_$MathTrainingsPackImpl _value,
      $Res Function(_$MathTrainingsPackImpl) _then)
      : super(_value, _then);

  /// Create a copy of MathTrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? trainings = null,
  }) {
    return _then(_$MathTrainingsPackImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      trainings: null == trainings
          ? _value._trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<MathTraining>,
    ));
  }
}

/// @nodoc

class _$MathTrainingsPackImpl implements _MathTrainingsPack {
  const _$MathTrainingsPackImpl(
      {required this.name, required final List<MathTraining> trainings})
      : _trainings = trainings;

  @override
  final String name;
  final List<MathTraining> _trainings;
  @override
  List<MathTraining> get trainings {
    if (_trainings is EqualUnmodifiableListView) return _trainings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainings);
  }

  @override
  String toString() {
    return 'MathTrainingsPack(name: $name, trainings: $trainings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MathTrainingsPackImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._trainings, _trainings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_trainings));

  /// Create a copy of MathTrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MathTrainingsPackImplCopyWith<_$MathTrainingsPackImpl> get copyWith =>
      __$$MathTrainingsPackImplCopyWithImpl<_$MathTrainingsPackImpl>(
          this, _$identity);
}

abstract class _MathTrainingsPack implements MathTrainingsPack {
  const factory _MathTrainingsPack(
      {required final String name,
      required final List<MathTraining> trainings}) = _$MathTrainingsPackImpl;

  @override
  String get name;
  @override
  List<MathTraining> get trainings;

  /// Create a copy of MathTrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MathTrainingsPackImplCopyWith<_$MathTrainingsPackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
