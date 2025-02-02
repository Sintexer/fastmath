import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_models.freezed.dart';

@freezed
class TrainingProblem with _$TrainingProblem {
  const factory TrainingProblem({
    required String question,
    required String answer
  }) = _TrainingProblem;
}

@freezed
class Training with _$Training {
  const factory Training({
    required String id,
    required String title,
    required List<TrainingProblem> problems,
  }) = _Training;
}

@freezed
class TrainingsPack with _$TrainingsPack {
  const factory TrainingsPack({
    required String name,
    required List<Training> trainings,
  }) = _TrainingsPack;
}

@freezed
class TrainingStatistics with _$TrainingStatistics {
  const factory TrainingStatistics({
    @Default(0) int correctAnswers,
  }) = _TrainingStatistics;
}