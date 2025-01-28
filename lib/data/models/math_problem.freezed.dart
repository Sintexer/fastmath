// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'math_problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MathProblem {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  /// Create a copy of MathProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MathProblemCopyWith<MathProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MathProblemCopyWith<$Res> {
  factory $MathProblemCopyWith(
          MathProblem value, $Res Function(MathProblem) then) =
      _$MathProblemCopyWithImpl<$Res, MathProblem>;
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class _$MathProblemCopyWithImpl<$Res, $Val extends MathProblem>
    implements $MathProblemCopyWith<$Res> {
  _$MathProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MathProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MathProblemImplCopyWith<$Res>
    implements $MathProblemCopyWith<$Res> {
  factory _$$MathProblemImplCopyWith(
          _$MathProblemImpl value, $Res Function(_$MathProblemImpl) then) =
      __$$MathProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class __$$MathProblemImplCopyWithImpl<$Res>
    extends _$MathProblemCopyWithImpl<$Res, _$MathProblemImpl>
    implements _$$MathProblemImplCopyWith<$Res> {
  __$$MathProblemImplCopyWithImpl(
      _$MathProblemImpl _value, $Res Function(_$MathProblemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MathProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$MathProblemImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MathProblemImpl implements _MathProblem {
  const _$MathProblemImpl({required this.question, required this.answer});

  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'MathProblem(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MathProblemImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  /// Create a copy of MathProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MathProblemImplCopyWith<_$MathProblemImpl> get copyWith =>
      __$$MathProblemImplCopyWithImpl<_$MathProblemImpl>(this, _$identity);
}

abstract class _MathProblem implements MathProblem {
  const factory _MathProblem(
      {required final String question,
      required final String answer}) = _$MathProblemImpl;

  @override
  String get question;
  @override
  String get answer;

  /// Create a copy of MathProblem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MathProblemImplCopyWith<_$MathProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
