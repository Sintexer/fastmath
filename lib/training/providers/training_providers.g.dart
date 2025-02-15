// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trainingStateHash() => r'e83288acceb99e6bc32615ad4413ce05ae3f1021';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TrainingState
    extends BuildlessAutoDisposeNotifier<TrainingProgress> {
  late final Training training;

  TrainingProgress build(
    Training training,
  );
}

/// See also [TrainingState].
@ProviderFor(TrainingState)
const trainingStateProvider = TrainingStateFamily();

/// See also [TrainingState].
class TrainingStateFamily extends Family<TrainingProgress> {
  /// See also [TrainingState].
  const TrainingStateFamily();

  /// See also [TrainingState].
  TrainingStateProvider call(
    Training training,
  ) {
    return TrainingStateProvider(
      training,
    );
  }

  @override
  TrainingStateProvider getProviderOverride(
    covariant TrainingStateProvider provider,
  ) {
    return call(
      provider.training,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trainingStateProvider';
}

/// See also [TrainingState].
class TrainingStateProvider
    extends AutoDisposeNotifierProviderImpl<TrainingState, TrainingProgress> {
  /// See also [TrainingState].
  TrainingStateProvider(
    Training training,
  ) : this._internal(
          () => TrainingState()..training = training,
          from: trainingStateProvider,
          name: r'trainingStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trainingStateHash,
          dependencies: TrainingStateFamily._dependencies,
          allTransitiveDependencies:
              TrainingStateFamily._allTransitiveDependencies,
          training: training,
        );

  TrainingStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.training,
  }) : super.internal();

  final Training training;

  @override
  TrainingProgress runNotifierBuild(
    covariant TrainingState notifier,
  ) {
    return notifier.build(
      training,
    );
  }

  @override
  Override overrideWith(TrainingState Function() create) {
    return ProviderOverride(
      origin: this,
      override: TrainingStateProvider._internal(
        () => create()..training = training,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        training: training,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<TrainingState, TrainingProgress>
      createElement() {
    return _TrainingStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TrainingStateProvider && other.training == training;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, training.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TrainingStateRef on AutoDisposeNotifierProviderRef<TrainingProgress> {
  /// The parameter `training` of this provider.
  Training get training;
}

class _TrainingStateProviderElement
    extends AutoDisposeNotifierProviderElement<TrainingState, TrainingProgress>
    with TrainingStateRef {
  _TrainingStateProviderElement(super.provider);

  @override
  Training get training => (origin as TrainingStateProvider).training;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
