// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainingProblem _$TrainingProblemFromJson(Map<String, dynamic> json) {
  return _TrainingProblem.fromJson(json);
}

/// @nodoc
mixin _$TrainingProblem {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  /// Serializes this TrainingProblem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainingProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingProblemCopyWith<TrainingProblem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingProblemCopyWith<$Res> {
  factory $TrainingProblemCopyWith(
          TrainingProblem value, $Res Function(TrainingProblem) then) =
      _$TrainingProblemCopyWithImpl<$Res, TrainingProblem>;
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class _$TrainingProblemCopyWithImpl<$Res, $Val extends TrainingProblem>
    implements $TrainingProblemCopyWith<$Res> {
  _$TrainingProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainingProblem
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
abstract class _$$TrainingProblemImplCopyWith<$Res>
    implements $TrainingProblemCopyWith<$Res> {
  factory _$$TrainingProblemImplCopyWith(_$TrainingProblemImpl value,
          $Res Function(_$TrainingProblemImpl) then) =
      __$$TrainingProblemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class __$$TrainingProblemImplCopyWithImpl<$Res>
    extends _$TrainingProblemCopyWithImpl<$Res, _$TrainingProblemImpl>
    implements _$$TrainingProblemImplCopyWith<$Res> {
  __$$TrainingProblemImplCopyWithImpl(
      _$TrainingProblemImpl _value, $Res Function(_$TrainingProblemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainingProblem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$TrainingProblemImpl(
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
@JsonSerializable()
class _$TrainingProblemImpl
    with DiagnosticableTreeMixin
    implements _TrainingProblem {
  const _$TrainingProblemImpl({required this.question, required this.answer});

  factory _$TrainingProblemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingProblemImplFromJson(json);

  @override
  final String question;
  @override
  final String answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainingProblem(question: $question, answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrainingProblem'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingProblemImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  /// Create a copy of TrainingProblem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingProblemImplCopyWith<_$TrainingProblemImpl> get copyWith =>
      __$$TrainingProblemImplCopyWithImpl<_$TrainingProblemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingProblemImplToJson(
      this,
    );
  }
}

abstract class _TrainingProblem implements TrainingProblem {
  const factory _TrainingProblem(
      {required final String question,
      required final String answer}) = _$TrainingProblemImpl;

  factory _TrainingProblem.fromJson(Map<String, dynamic> json) =
      _$TrainingProblemImpl.fromJson;

  @override
  String get question;
  @override
  String get answer;

  /// Create a copy of TrainingProblem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingProblemImplCopyWith<_$TrainingProblemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Training _$TrainingFromJson(Map<String, dynamic> json) {
  return _Training.fromJson(json);
}

/// @nodoc
mixin _$Training {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get pack => throw _privateConstructorUsedError;
  List<TrainingProblem> get problems => throw _privateConstructorUsedError;

  /// Serializes this Training to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Training
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingCopyWith<Training> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingCopyWith<$Res> {
  factory $TrainingCopyWith(Training value, $Res Function(Training) then) =
      _$TrainingCopyWithImpl<$Res, Training>;
  @useResult
  $Res call(
      {String id, String title, String pack, List<TrainingProblem> problems});
}

/// @nodoc
class _$TrainingCopyWithImpl<$Res, $Val extends Training>
    implements $TrainingCopyWith<$Res> {
  _$TrainingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Training
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? pack = null,
    Object? problems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pack: null == pack
          ? _value.pack
          : pack // ignore: cast_nullable_to_non_nullable
              as String,
      problems: null == problems
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<TrainingProblem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingImplCopyWith<$Res>
    implements $TrainingCopyWith<$Res> {
  factory _$$TrainingImplCopyWith(
          _$TrainingImpl value, $Res Function(_$TrainingImpl) then) =
      __$$TrainingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String pack, List<TrainingProblem> problems});
}

/// @nodoc
class __$$TrainingImplCopyWithImpl<$Res>
    extends _$TrainingCopyWithImpl<$Res, _$TrainingImpl>
    implements _$$TrainingImplCopyWith<$Res> {
  __$$TrainingImplCopyWithImpl(
      _$TrainingImpl _value, $Res Function(_$TrainingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Training
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? pack = null,
    Object? problems = null,
  }) {
    return _then(_$TrainingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pack: null == pack
          ? _value.pack
          : pack // ignore: cast_nullable_to_non_nullable
              as String,
      problems: null == problems
          ? _value._problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<TrainingProblem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingImpl with DiagnosticableTreeMixin implements _Training {
  const _$TrainingImpl(
      {required this.id,
      required this.title,
      required this.pack,
      required final List<TrainingProblem> problems})
      : _problems = problems;

  factory _$TrainingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String pack;
  final List<TrainingProblem> _problems;
  @override
  List<TrainingProblem> get problems {
    if (_problems is EqualUnmodifiableListView) return _problems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_problems);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Training(id: $id, title: $title, pack: $pack, problems: $problems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Training'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('pack', pack))
      ..add(DiagnosticsProperty('problems', problems));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pack, pack) || other.pack == pack) &&
            const DeepCollectionEquality().equals(other._problems, _problems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, pack,
      const DeepCollectionEquality().hash(_problems));

  /// Create a copy of Training
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingImplCopyWith<_$TrainingImpl> get copyWith =>
      __$$TrainingImplCopyWithImpl<_$TrainingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingImplToJson(
      this,
    );
  }
}

abstract class _Training implements Training {
  const factory _Training(
      {required final String id,
      required final String title,
      required final String pack,
      required final List<TrainingProblem> problems}) = _$TrainingImpl;

  factory _Training.fromJson(Map<String, dynamic> json) =
      _$TrainingImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get pack;
  @override
  List<TrainingProblem> get problems;

  /// Create a copy of Training
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingImplCopyWith<_$TrainingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainingsPack _$TrainingsPackFromJson(Map<String, dynamic> json) {
  return _TrainingsPack.fromJson(json);
}

/// @nodoc
mixin _$TrainingsPack {
  String get name => throw _privateConstructorUsedError;
  List<Training> get trainings => throw _privateConstructorUsedError;

  /// Serializes this TrainingsPack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingsPackCopyWith<TrainingsPack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingsPackCopyWith<$Res> {
  factory $TrainingsPackCopyWith(
          TrainingsPack value, $Res Function(TrainingsPack) then) =
      _$TrainingsPackCopyWithImpl<$Res, TrainingsPack>;
  @useResult
  $Res call({String name, List<Training> trainings});
}

/// @nodoc
class _$TrainingsPackCopyWithImpl<$Res, $Val extends TrainingsPack>
    implements $TrainingsPackCopyWith<$Res> {
  _$TrainingsPackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainingsPack
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
              as List<Training>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingsPackImplCopyWith<$Res>
    implements $TrainingsPackCopyWith<$Res> {
  factory _$$TrainingsPackImplCopyWith(
          _$TrainingsPackImpl value, $Res Function(_$TrainingsPackImpl) then) =
      __$$TrainingsPackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Training> trainings});
}

/// @nodoc
class __$$TrainingsPackImplCopyWithImpl<$Res>
    extends _$TrainingsPackCopyWithImpl<$Res, _$TrainingsPackImpl>
    implements _$$TrainingsPackImplCopyWith<$Res> {
  __$$TrainingsPackImplCopyWithImpl(
      _$TrainingsPackImpl _value, $Res Function(_$TrainingsPackImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? trainings = null,
  }) {
    return _then(_$TrainingsPackImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      trainings: null == trainings
          ? _value._trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<Training>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingsPackImpl
    with DiagnosticableTreeMixin
    implements _TrainingsPack {
  const _$TrainingsPackImpl(
      {required this.name, required final List<Training> trainings})
      : _trainings = trainings;

  factory _$TrainingsPackImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingsPackImplFromJson(json);

  @override
  final String name;
  final List<Training> _trainings;
  @override
  List<Training> get trainings {
    if (_trainings is EqualUnmodifiableListView) return _trainings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainingsPack(name: $name, trainings: $trainings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrainingsPack'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('trainings', trainings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingsPackImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._trainings, _trainings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_trainings));

  /// Create a copy of TrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingsPackImplCopyWith<_$TrainingsPackImpl> get copyWith =>
      __$$TrainingsPackImplCopyWithImpl<_$TrainingsPackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingsPackImplToJson(
      this,
    );
  }
}

abstract class _TrainingsPack implements TrainingsPack {
  const factory _TrainingsPack(
      {required final String name,
      required final List<Training> trainings}) = _$TrainingsPackImpl;

  factory _TrainingsPack.fromJson(Map<String, dynamic> json) =
      _$TrainingsPackImpl.fromJson;

  @override
  String get name;
  @override
  List<Training> get trainings;

  /// Create a copy of TrainingsPack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingsPackImplCopyWith<_$TrainingsPackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllTrainings _$AllTrainingsFromJson(Map<String, dynamic> json) {
  return _AllTrainings.fromJson(json);
}

/// @nodoc
mixin _$AllTrainings {
  List<Training> get trainings => throw _privateConstructorUsedError;

  /// Serializes this AllTrainings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllTrainings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllTrainingsCopyWith<AllTrainings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTrainingsCopyWith<$Res> {
  factory $AllTrainingsCopyWith(
          AllTrainings value, $Res Function(AllTrainings) then) =
      _$AllTrainingsCopyWithImpl<$Res, AllTrainings>;
  @useResult
  $Res call({List<Training> trainings});
}

/// @nodoc
class _$AllTrainingsCopyWithImpl<$Res, $Val extends AllTrainings>
    implements $AllTrainingsCopyWith<$Res> {
  _$AllTrainingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllTrainings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainings = null,
  }) {
    return _then(_value.copyWith(
      trainings: null == trainings
          ? _value.trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<Training>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllTrainingsImplCopyWith<$Res>
    implements $AllTrainingsCopyWith<$Res> {
  factory _$$AllTrainingsImplCopyWith(
          _$AllTrainingsImpl value, $Res Function(_$AllTrainingsImpl) then) =
      __$$AllTrainingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Training> trainings});
}

/// @nodoc
class __$$AllTrainingsImplCopyWithImpl<$Res>
    extends _$AllTrainingsCopyWithImpl<$Res, _$AllTrainingsImpl>
    implements _$$AllTrainingsImplCopyWith<$Res> {
  __$$AllTrainingsImplCopyWithImpl(
      _$AllTrainingsImpl _value, $Res Function(_$AllTrainingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllTrainings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainings = null,
  }) {
    return _then(_$AllTrainingsImpl(
      trainings: null == trainings
          ? _value._trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<Training>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllTrainingsImpl with DiagnosticableTreeMixin implements _AllTrainings {
  const _$AllTrainingsImpl({required final List<Training> trainings})
      : _trainings = trainings;

  factory _$AllTrainingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllTrainingsImplFromJson(json);

  final List<Training> _trainings;
  @override
  List<Training> get trainings {
    if (_trainings is EqualUnmodifiableListView) return _trainings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainings);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AllTrainings(trainings: $trainings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AllTrainings'))
      ..add(DiagnosticsProperty('trainings', trainings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTrainingsImpl &&
            const DeepCollectionEquality()
                .equals(other._trainings, _trainings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trainings));

  /// Create a copy of AllTrainings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllTrainingsImplCopyWith<_$AllTrainingsImpl> get copyWith =>
      __$$AllTrainingsImplCopyWithImpl<_$AllTrainingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllTrainingsImplToJson(
      this,
    );
  }
}

abstract class _AllTrainings implements AllTrainings {
  const factory _AllTrainings({required final List<Training> trainings}) =
      _$AllTrainingsImpl;

  factory _AllTrainings.fromJson(Map<String, dynamic> json) =
      _$AllTrainingsImpl.fromJson;

  @override
  List<Training> get trainings;

  /// Create a copy of AllTrainings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllTrainingsImplCopyWith<_$AllTrainingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainingStatistics {
  int get correctAnswers => throw _privateConstructorUsedError;

  /// Create a copy of TrainingStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingStatisticsCopyWith<TrainingStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingStatisticsCopyWith<$Res> {
  factory $TrainingStatisticsCopyWith(
          TrainingStatistics value, $Res Function(TrainingStatistics) then) =
      _$TrainingStatisticsCopyWithImpl<$Res, TrainingStatistics>;
  @useResult
  $Res call({int correctAnswers});
}

/// @nodoc
class _$TrainingStatisticsCopyWithImpl<$Res, $Val extends TrainingStatistics>
    implements $TrainingStatisticsCopyWith<$Res> {
  _$TrainingStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainingStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswers = null,
  }) {
    return _then(_value.copyWith(
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingStatisticsImplCopyWith<$Res>
    implements $TrainingStatisticsCopyWith<$Res> {
  factory _$$TrainingStatisticsImplCopyWith(_$TrainingStatisticsImpl value,
          $Res Function(_$TrainingStatisticsImpl) then) =
      __$$TrainingStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int correctAnswers});
}

/// @nodoc
class __$$TrainingStatisticsImplCopyWithImpl<$Res>
    extends _$TrainingStatisticsCopyWithImpl<$Res, _$TrainingStatisticsImpl>
    implements _$$TrainingStatisticsImplCopyWith<$Res> {
  __$$TrainingStatisticsImplCopyWithImpl(_$TrainingStatisticsImpl _value,
      $Res Function(_$TrainingStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainingStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswers = null,
  }) {
    return _then(_$TrainingStatisticsImpl(
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TrainingStatisticsImpl
    with DiagnosticableTreeMixin
    implements _TrainingStatistics {
  const _$TrainingStatisticsImpl({this.correctAnswers = 0});

  @override
  @JsonKey()
  final int correctAnswers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainingStatistics(correctAnswers: $correctAnswers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrainingStatistics'))
      ..add(DiagnosticsProperty('correctAnswers', correctAnswers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingStatisticsImpl &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, correctAnswers);

  /// Create a copy of TrainingStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingStatisticsImplCopyWith<_$TrainingStatisticsImpl> get copyWith =>
      __$$TrainingStatisticsImplCopyWithImpl<_$TrainingStatisticsImpl>(
          this, _$identity);
}

abstract class _TrainingStatistics implements TrainingStatistics {
  const factory _TrainingStatistics({final int correctAnswers}) =
      _$TrainingStatisticsImpl;

  @override
  int get correctAnswers;

  /// Create a copy of TrainingStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingStatisticsImplCopyWith<_$TrainingStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainingProgress {
  TrainingStatistics get statistics => throw _privateConstructorUsedError;
  dynamic get finished => throw _privateConstructorUsedError;
  List<int> get questionsOrder => throw _privateConstructorUsedError;

  /// Create a copy of TrainingProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainingProgressCopyWith<TrainingProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingProgressCopyWith<$Res> {
  factory $TrainingProgressCopyWith(
          TrainingProgress value, $Res Function(TrainingProgress) then) =
      _$TrainingProgressCopyWithImpl<$Res, TrainingProgress>;
  @useResult
  $Res call(
      {TrainingStatistics statistics,
      dynamic finished,
      List<int> questionsOrder});

  $TrainingStatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class _$TrainingProgressCopyWithImpl<$Res, $Val extends TrainingProgress>
    implements $TrainingProgressCopyWith<$Res> {
  _$TrainingProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainingProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statistics = null,
    Object? finished = freezed,
    Object? questionsOrder = null,
  }) {
    return _then(_value.copyWith(
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as TrainingStatistics,
      finished: freezed == finished
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionsOrder: null == questionsOrder
          ? _value.questionsOrder
          : questionsOrder // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  /// Create a copy of TrainingProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrainingStatisticsCopyWith<$Res> get statistics {
    return $TrainingStatisticsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrainingProgressImplCopyWith<$Res>
    implements $TrainingProgressCopyWith<$Res> {
  factory _$$TrainingProgressImplCopyWith(_$TrainingProgressImpl value,
          $Res Function(_$TrainingProgressImpl) then) =
      __$$TrainingProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrainingStatistics statistics,
      dynamic finished,
      List<int> questionsOrder});

  @override
  $TrainingStatisticsCopyWith<$Res> get statistics;
}

/// @nodoc
class __$$TrainingProgressImplCopyWithImpl<$Res>
    extends _$TrainingProgressCopyWithImpl<$Res, _$TrainingProgressImpl>
    implements _$$TrainingProgressImplCopyWith<$Res> {
  __$$TrainingProgressImplCopyWithImpl(_$TrainingProgressImpl _value,
      $Res Function(_$TrainingProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainingProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statistics = null,
    Object? finished = freezed,
    Object? questionsOrder = null,
  }) {
    return _then(_$TrainingProgressImpl(
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as TrainingStatistics,
      finished: freezed == finished ? _value.finished! : finished,
      questionsOrder: null == questionsOrder
          ? _value._questionsOrder
          : questionsOrder // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$TrainingProgressImpl extends _TrainingProgress
    with DiagnosticableTreeMixin {
  const _$TrainingProgressImpl(
      {this.statistics = const TrainingStatistics(),
      this.finished = false,
      required final List<int> questionsOrder})
      : _questionsOrder = questionsOrder,
        super._();

  @override
  @JsonKey()
  final TrainingStatistics statistics;
  @override
  @JsonKey()
  final dynamic finished;
  final List<int> _questionsOrder;
  @override
  List<int> get questionsOrder {
    if (_questionsOrder is EqualUnmodifiableListView) return _questionsOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionsOrder);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainingProgress(statistics: $statistics, finished: $finished, questionsOrder: $questionsOrder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrainingProgress'))
      ..add(DiagnosticsProperty('statistics', statistics))
      ..add(DiagnosticsProperty('finished', finished))
      ..add(DiagnosticsProperty('questionsOrder', questionsOrder));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingProgressImpl &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics) &&
            const DeepCollectionEquality().equals(other.finished, finished) &&
            const DeepCollectionEquality()
                .equals(other._questionsOrder, _questionsOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      statistics,
      const DeepCollectionEquality().hash(finished),
      const DeepCollectionEquality().hash(_questionsOrder));

  /// Create a copy of TrainingProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingProgressImplCopyWith<_$TrainingProgressImpl> get copyWith =>
      __$$TrainingProgressImplCopyWithImpl<_$TrainingProgressImpl>(
          this, _$identity);
}

abstract class _TrainingProgress extends TrainingProgress {
  const factory _TrainingProgress(
      {final TrainingStatistics statistics,
      final dynamic finished,
      required final List<int> questionsOrder}) = _$TrainingProgressImpl;
  const _TrainingProgress._() : super._();

  @override
  TrainingStatistics get statistics;
  @override
  dynamic get finished;
  @override
  List<int> get questionsOrder;

  /// Create a copy of TrainingProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainingProgressImplCopyWith<_$TrainingProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
