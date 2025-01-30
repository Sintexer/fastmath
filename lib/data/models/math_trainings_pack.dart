import 'package:fastmath/data/models/math_training.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'math_trainings_pack.freezed.dart';

@freezed
class MathTrainingsPack with _$MathTrainingsPack {
  const factory MathTrainingsPack({
    required String name,
    required List<MathTraining> trainings,
  }) = _MathTrainingsPack;
}