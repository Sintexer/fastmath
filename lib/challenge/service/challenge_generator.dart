import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/challenge/service/addition_challenge_generators.dart';
import 'package:fastmath/challenge/service/subtraction_challenge_generators.dart';
import 'package:fastmath/model/math.dart';

abstract class ProblemGeneratorService {
  Future<ChallengeProblem> generateProblem();
}

final Map<Topic, ProblemGeneratorService> generators = {
  Topic.addition: AdditionProblemGenerator(),
  Topic.subtraction: SubtractionProblemGenerator(),
};