import 'package:freezed_annotation/freezed_annotation.dart';
import 'math_problem.dart';

part 'math_training.freezed.dart';

@freezed
class MathTraining with _$MathTraining {
  const factory MathTraining({
    required String title,
    required List<MathProblem> problems,
  }) = _MathTraining;
}
