// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$randomHash() => r'4665adec928392718b864a6f9a27cedeb519877a';

/// See also [random].
@ProviderFor(random)
final randomProvider = AutoDisposeProvider<Random>.internal(
  random,
  name: r'randomProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$randomHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RandomRef = AutoDisposeProviderRef<Random>;
String _$challengeConfigStateHash() =>
    r'a9d741de6ddfaa6a70606c34628ccf993a6d4f63';

/// See also [ChallengeConfigState].
@ProviderFor(ChallengeConfigState)
final challengeConfigStateProvider =
    AutoDisposeNotifierProvider<ChallengeConfigState, ChallengeConfig>.internal(
  ChallengeConfigState.new,
  name: r'challengeConfigStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$challengeConfigStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChallengeConfigState = AutoDisposeNotifier<ChallengeConfig>;
String _$challengeStateHash() => r'5c7024623d33dea126127c38a8d59b20108095b4';

/// See also [ChallengeState].
@ProviderFor(ChallengeState)
final challengeStateProvider = AutoDisposeAsyncNotifierProvider<ChallengeState,
    ChallengeProgress>.internal(
  ChallengeState.new,
  name: r'challengeStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$challengeStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChallengeState = AutoDisposeAsyncNotifier<ChallengeProgress>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
