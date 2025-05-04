
import 'package:fastmath/problem/problem.dart';

abstract class ProblemGenerator {
  Problem generateProblem(Map<String, dynamic> parameters);

  List<Problem> generateProblems(Map<String, dynamic> parameters, int count);

  /// Generate wrong answers for multiple choice questions
  List<String> generateMockAnswers(Problem problem, int count);

}