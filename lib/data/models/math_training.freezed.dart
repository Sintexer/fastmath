// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'math_training.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MathTraining {
  String get title => throw _privateConstructorUsedError;
  List<MathProblem> get problems => throw _privateConstructorUsedError;

  /// Create a copy of MathTraining
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MathTrainingCopyWith<MathTraining> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MathTrainingCopyWith<$Res> {
  factory $MathTrainingCopyWith(
          MathTraining value, $Res Function(MathTraining) then) =
      _$MathTrainingCopyWithImpl<$Res, MathTraining>;
  @useResult
  $Res call({String title, List<MathProblem> problems});
}

/// @nodoc
class _$MathTrainingCopyWithImpl<$Res, $Val extends MathTraining>
    implements $MathTrainingCopyWith<$Res> {
  _$MathTrainingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MathTraining
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? problems = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      problems: null == problems
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<MathProblem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MathTrainingImplCopyWith<$Res>
    implements $MathTrainingCopyWith<$Res> {
  factory _$$MathTrainingImplCopyWith(
          _$MathTrainingImpl value, $Res Function(_$MathTrainingImpl) then) =
      __$$MathTrainingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<MathProblem> problems});
}

/// @nodoc
class __$$MathTrainingImplCopyWithImpl<$Res>
    extends _$MathTrainingCopyWithImpl<$Res, _$MathTrainingImpl>
    implements _$$MathTrainingImplCopyWith<$Res> {
  __$$MathTrainingImplCopyWithImpl(
      _$MathTrainingImpl _value, $Res Function(_$MathTrainingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MathTraining
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? problems = null,
  }) {
    return _then(_$MathTrainingImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      problems: null == problems
          ? _value._problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<MathProblem>,
    ));
  }
}

/// @nodoc

class _$MathTrainingImpl implements _MathTraining {
  const _$MathTrainingImpl(
      {required this.title, required final List<MathProblem> problems})
      : _problems = problems;

  @override
  final String title;
  final List<MathProblem> _problems;
  @override
  List<MathProblem> get problems {
    if (_problems is EqualUnmodifiableListView) return _problems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_problems);
  }

  @override
  String toString() {
    return 'MathTraining(title: $title, problems: $problems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MathTrainingImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._problems, _problems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_problems));

  /// Create a copy of MathTraining
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MathTrainingImplCopyWith<_$MathTrainingImpl> get copyWith =>
      __$$MathTrainingImplCopyWithImpl<_$MathTrainingImpl>(this, _$identity);
}

abstract class _MathTraining implements MathTraining {
  const factory _MathTraining(
      {required final String title,
      required final List<MathProblem> problems}) = _$MathTrainingImpl;

  @override
  String get title;
  @override
  List<MathProblem> get problems;

  /// Create a copy of MathTraining
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MathTrainingImplCopyWith<_$MathTrainingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
