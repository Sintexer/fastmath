

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

@freezed
class ChallengeProblem with _$ChallengeProblem {
  const factory ChallengeProblem({
    required String question,
    required String correctAnswer,
    @Default([]) List<String> mockAnswers
  }) = _ChallengeProblem;
}

@freezed
class ChallengeProgress with _$ChallengeProgress {
  const factory ChallengeProgress({
    required List<ChallengeProblem> problems,
    required List<String> answers,
    @Default(0) int currentProblem,
  })  = _ChallengeProgress;
}

@freezed
class ChallengeResult with _$ChallengeResult {
  const factory ChallengeResult({
    required int correctAnswers,
    required int totalQuestions
  }) = _ChallengeResult;
}