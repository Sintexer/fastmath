import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_models.freezed.dart';
part 'training_models.g.dart';

@freezed
class TrainingProblem with _$TrainingProblem {
  const factory TrainingProblem({
    required String question,
    required String answer
  }) = _TrainingProblem;

  factory TrainingProblem.fromJson(Map<String, dynamic> json) => _$TrainingProblemFromJson(json);
}

@freezed
class Training with _$Training {
  const factory Training({
    required String id,
    required String title,
    required String pack,
    required List<TrainingProblem> problems,
  }) = _Training;

  factory Training.fromJson(Map<String, dynamic> json) => _$TrainingFromJson(json);
}

@freezed
class TrainingsPack with _$TrainingsPack {
  const factory TrainingsPack({
    required String name,
    required List<Training> trainings,
  }) = _TrainingsPack;

  factory TrainingsPack.fromJson(Map<String, dynamic> json) => _$TrainingsPackFromJson(json);
}

@freezed
class AllTrainings with _$AllTrainings {
  const factory AllTrainings({
    required List<Training> trainings,
  }) = _AllTrainings;

  factory AllTrainings.fromJson(Map<String, dynamic> json) => _$AllTrainingsFromJson(json);
}

@freezed
class TrainingStatistics with _$TrainingStatistics {
  const factory TrainingStatistics({
    @Default(0) int correctAnswers,
  }) = _TrainingStatistics;
}

@freezed
class TrainingProgress with _$TrainingProgress {
  const TrainingProgress._();
  const factory TrainingProgress({
    @Default(TrainingStatistics()) TrainingStatistics statistics,
    @Default(false) finished,
    required List<int> questionsOrder
  }) = _TrainingProgress;
}