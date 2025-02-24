import 'dart:math';

import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/challenge/service/challenge_generator.dart';
import 'package:fastmath/model/math.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'challenge_providers.g.dart';

@riverpod
class ChallengeConfigState extends _$ChallengeConfigState {
  @override
  ChallengeConfig build() {
    return ChallengeConfig(
        length: 15, topics: [Topic.addition, Topic.subtraction]);
  }

  void setTopics(List<Topic> topics) {
    state = state.copyWith(topics: topics);
  }

  void setLength(int length) {
    state = state.copyWith(length: length);
  }
}

@riverpod
Random random(Ref ref) {
  return Random();
}

@riverpod
class ChallengeState extends _$ChallengeState {
  @override
  Future<ChallengeProgress> build() async {
    final random = ref.watch(randomProvider);
    final config = ref.watch(challengeConfigStateProvider);
    final problems = <ChallengeProblem>[];
    for (int i = 0; i < config.length; ++i) {
      final topic = config.topics[random.nextInt(config.topics.length)];
      final problem = await generators[topic]!.generateProblem();
      problems.add(problem);
    }
    return ChallengeProgress(
      problems: problems,
      answers: List.empty(),
    );
  }

  Future<void> submitAnswer(String answer) async {
    final currentProgress = state.value!;
    state = AsyncData(currentProgress
        .copyWith(answers: [...currentProgress.answers, answer]));
  }
}
