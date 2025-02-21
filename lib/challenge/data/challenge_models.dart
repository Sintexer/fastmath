

import 'package:fastmath/model/math.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'challenge_models.freezed.dart';

@freezed
class ChallengeConfig with _$ChallengeConfig {
  const factory ChallengeConfig({
    required int length,
    required List<Topic> topics,
  }) = _ChallengeConfig;
}