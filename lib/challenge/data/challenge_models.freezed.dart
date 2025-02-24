// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChallengeConfig {
  int get length => throw _privateConstructorUsedError;
  List<Topic> get topics => throw _privateConstructorUsedError;

  /// Create a copy of ChallengeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengeConfigCopyWith<ChallengeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeConfigCopyWith<$Res> {
  factory $ChallengeConfigCopyWith(
          ChallengeConfig value, $Res Function(ChallengeConfig) then) =
      _$ChallengeConfigCopyWithImpl<$Res, ChallengeConfig>;
  @useResult
  $Res call({int length, List<Topic> topics});
}

/// @nodoc
class _$ChallengeConfigCopyWithImpl<$Res, $Val extends ChallengeConfig>
    implements $ChallengeConfigCopyWith<$Res> {
  _$ChallengeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChallengeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeConfigImplCopyWith<$Res>
    implements $ChallengeConfigCopyWith<$Res> {
  factory _$$ChallengeConfigImplCopyWith(_$ChallengeConfigImpl value,
          $Res Function(_$ChallengeConfigImpl) then) =
      __$$ChallengeConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int length, List<Topic> topics});
}

/// @nodoc
class __$$ChallengeConfigImplCopyWithImpl<$Res>
    extends _$ChallengeConfigCopyWithImpl<$Res, _$ChallengeConfigImpl>
    implements _$$ChallengeConfigImplCopyWith<$Res> {
  __$$ChallengeConfigImplCopyWithImpl(
      _$ChallengeConfigImpl _value, $Res Function(_$ChallengeConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChallengeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? topics = null,
  }) {
    return _then(_$ChallengeConfigImpl(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$ChallengeConfigImpl implements _ChallengeConfig {
  const _$ChallengeConfigImpl(
      {required this.length, required final List<Topic> topics})
      : _topics = topics;

  @override
  final int length;
  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'ChallengeConfig(length: $length, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeConfigImpl &&
            (identical(other.length, length) || other.length == length) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, length, const DeepCollectionEquality().hash(_topics));

  /// Create a copy of ChallengeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeConfigImplCopyWith<_$ChallengeConfigImpl> get copyWith =>
      __$$ChallengeConfigImplCopyWithImpl<_$ChallengeConfigImpl>(
          this, _$identity);
}

abstract class _ChallengeConfig implements ChallengeConfig {
  const factory _ChallengeConfig(
      {required final int length,
      required final List<Topic> topics}) = _$ChallengeConfigImpl;

  @override
  int get length;
  @override
  List<Topic> get topics;

  /// Create a copy of ChallengeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeConfigImplCopyWith<_$ChallengeConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChallengeProblem {
  String get question => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  List<String> get mockAnswers => throw _privateConstructorUsedError;

  /// Create a copy of ChallengeProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengeProblemCopyWith<ChallengeProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeProblemCopyWith<$Res> {
  factory $ChallengeProblemCopyWith(
          ChallengeProblem value, $Res Function(ChallengeProblem) then) =
      _$ChallengeProblemCopyWithImpl<$Res, ChallengeProblem>;
  @useResult
  $Res call({String question, String correctAnswer, List<String> mockAnswers});
}

/// @nodoc
class _$ChallengeProblemCopyWithImpl<$Res, $Val extends ChallengeProblem>
    implements $ChallengeProblemCopyWith<$Res> {
  _$ChallengeProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChallengeProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? correctAnswer = null,
    Object? mockAnswers = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      mockAnswers: null == mockAnswers
          ? _value.mockAnswers
          : mockAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeProblemImplCopyWith<$Res>
    implements $ChallengeProblemCopyWith<$Res> {
  factory _$$ChallengeProblemImplCopyWith(_$ChallengeProblemImpl value,
          $Res Function(_$ChallengeProblemImpl) then) =
      __$$ChallengeProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String correctAnswer, List<String> mockAnswers});
}

/// @nodoc
class __$$ChallengeProblemImplCopyWithImpl<$Res>
    extends _$ChallengeProblemCopyWithImpl<$Res, _$ChallengeProblemImpl>
    implements _$$ChallengeProblemImplCopyWith<$Res> {
  __$$ChallengeProblemImplCopyWithImpl(_$ChallengeProblemImpl _value,
      $Res Function(_$ChallengeProblemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChallengeProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? correctAnswer = null,
    Object? mockAnswers = null,
  }) {
    return _then(_$ChallengeProblemImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      mockAnswers: null == mockAnswers
          ? _value._mockAnswers
          : mockAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ChallengeProblemImpl implements _ChallengeProblem {
  const _$ChallengeProblemImpl(
      {required this.question,
      required this.correctAnswer,
      final List<String> mockAnswers = const []})
      : _mockAnswers = mockAnswers;

  @override
  final String question;
  @override
  final String correctAnswer;
  final List<String> _mockAnswers;
  @override
  @JsonKey()
  List<String> get mockAnswers {
    if (_mockAnswers is EqualUnmodifiableListView) return _mockAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mockAnswers);
  }

  @override
  String toString() {
    return 'ChallengeProblem(question: $question, correctAnswer: $correctAnswer, mockAnswers: $mockAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeProblemImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other._mockAnswers, _mockAnswers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, correctAnswer,
      const DeepCollectionEquality().hash(_mockAnswers));

  /// Create a copy of ChallengeProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeProblemImplCopyWith<_$ChallengeProblemImpl> get copyWith =>
      __$$ChallengeProblemImplCopyWithImpl<_$ChallengeProblemImpl>(
          this, _$identity);
}

abstract class _ChallengeProblem implements ChallengeProblem {
  const factory _ChallengeProblem(
      {required final String question,
      required final String correctAnswer,
      final List<String> mockAnswers}) = _$ChallengeProblemImpl;

  @override
  String get question;
  @override
  String get correctAnswer;
  @override
  List<String> get mockAnswers;

  /// Create a copy of ChallengeProblem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeProblemImplCopyWith<_$ChallengeProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChallengeProgress {
  List<ChallengeProblem> get problems => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;
  int get currentProblem => throw _privateConstructorUsedError;

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChallengeProgressCopyWith<ChallengeProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeProgressCopyWith<$Res> {
  factory $ChallengeProgressCopyWith(
          ChallengeProgress value, $Res Function(ChallengeProgress) then) =
      _$ChallengeProgressCopyWithImpl<$Res, ChallengeProgress>;
  @useResult
  $Res call(
      {List<ChallengeProblem> problems,
      List<String> answers,
      int currentProblem});
}

/// @nodoc
class _$ChallengeProgressCopyWithImpl<$Res, $Val extends ChallengeProgress>
    implements $ChallengeProgressCopyWith<$Res> {
  _$ChallengeProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problems = null,
    Object? answers = null,
    Object? currentProblem = null,
  }) {
    return _then(_value.copyWith(
      problems: null == problems
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<ChallengeProblem>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentProblem: null == currentProblem
          ? _value.currentProblem
          : currentProblem // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChallengeProgressImplCopyWith<$Res>
    implements $ChallengeProgressCopyWith<$Res> {
  factory _$$ChallengeProgressImplCopyWith(_$ChallengeProgressImpl value,
          $Res Function(_$ChallengeProgressImpl) then) =
      __$$ChallengeProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChallengeProblem> problems,
      List<String> answers,
      int currentProblem});
}

/// @nodoc
class __$$ChallengeProgressImplCopyWithImpl<$Res>
    extends _$ChallengeProgressCopyWithImpl<$Res, _$ChallengeProgressImpl>
    implements _$$ChallengeProgressImplCopyWith<$Res> {
  __$$ChallengeProgressImplCopyWithImpl(_$ChallengeProgressImpl _value,
      $Res Function(_$ChallengeProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problems = null,
    Object? answers = null,
    Object? currentProblem = null,
  }) {
    return _then(_$ChallengeProgressImpl(
      problems: null == problems
          ? _value._problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<ChallengeProblem>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentProblem: null == currentProblem
          ? _value.currentProblem
          : currentProblem // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChallengeProgressImpl implements _ChallengeProgress {
  const _$ChallengeProgressImpl(
      {required final List<ChallengeProblem> problems,
      required final List<String> answers,
      this.currentProblem = 0})
      : _problems = problems,
        _answers = answers;

  final List<ChallengeProblem> _problems;
  @override
  List<ChallengeProblem> get problems {
    if (_problems is EqualUnmodifiableListView) return _problems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_problems);
  }

  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey()
  final int currentProblem;

  @override
  String toString() {
    return 'ChallengeProgress(problems: $problems, answers: $answers, currentProblem: $currentProblem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeProgressImpl &&
            const DeepCollectionEquality().equals(other._problems, _problems) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.currentProblem, currentProblem) ||
                other.currentProblem == currentProblem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_problems),
      const DeepCollectionEquality().hash(_answers),
      currentProblem);

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeProgressImplCopyWith<_$ChallengeProgressImpl> get copyWith =>
      __$$ChallengeProgressImplCopyWithImpl<_$ChallengeProgressImpl>(
          this, _$identity);
}

abstract class _ChallengeProgress implements ChallengeProgress {
  const factory _ChallengeProgress(
      {required final List<ChallengeProblem> problems,
      required final List<String> answers,
      final int currentProblem}) = _$ChallengeProgressImpl;

  @override
  List<ChallengeProblem> get problems;
  @override
  List<String> get answers;
  @override
  int get currentProblem;

  /// Create a copy of ChallengeProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChallengeProgressImplCopyWith<_$ChallengeProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
