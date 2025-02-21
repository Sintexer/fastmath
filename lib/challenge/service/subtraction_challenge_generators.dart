import 'dart:math';

import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/challenge/service/challenge_generator.dart';

class SubtractionProblemGenerator extends ProblemGeneratorService {
  final random = Random();
  @override
  Future<ChallengeProblem> generateProblem() async {
    final right = random.nextInt(8) + 1;
    final left = random.nextInt(89) + right + 1;
    return ChallengeProblem(
      question: "$left - $right",
      correctAnswer: "${left - right}",
    );
  }
}
