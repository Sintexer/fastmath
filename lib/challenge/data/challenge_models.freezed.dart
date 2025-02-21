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
