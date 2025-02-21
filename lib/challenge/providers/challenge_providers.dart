

import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/model/math.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'challenge_providers.g.dart';

@riverpod
class ChallengeConfigState extends _$ChallengeConfigState {
  @override
  ChallengeConfig build() {
    return ChallengeConfig(length: 15, topics: [Topic.addition, Topic.subtraction]);
  }

  void setTopics(List<Topic> topics) {
    state = state.copyWith(topics: topics);
  }

  void setLength(int length) {
    state = state.copyWith(length: length);
  }
}