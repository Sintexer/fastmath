import 'package:fastmath/challenge/data/challenge_models.dart';

abstract class ProblemGeneratorService {
  Future<ChallengeProblem> generateProblem();
}