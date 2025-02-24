import 'dart:math';

import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/challenge/service/challenge_generator.dart';

class AdditionProblemGenerator extends ProblemGeneratorService {
  final random = Random();
  @override
  Future<ChallengeProblem> generateProblem() async {
    final left = random.nextInt(9) + 1;
    final right = random.nextInt(88) + 11;
    return ChallengeProblem(
      question: "$left + $right",
      correctAnswer: "${left + right}",
    );
  }

  // TODO smart mock answers generation: 
  // TODO have a set of noise generation like 
  // TODO plusTen, minusOne, plusTwo, etc, 
  // TODO and randomly pick several of them.

}
