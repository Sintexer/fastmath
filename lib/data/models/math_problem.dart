import 'package:freezed_annotation/freezed_annotation.dart';

part 'math_problem.freezed.dart';

@freezed
class MathProblem with _$MathProblem {
  const factory MathProblem({
    required String question,
    required String answer
  }) = _MathProblem;
}