import 'package:fastmath/problem/problem.dart';
import 'package:fastmath/problem/problem_type.dart';

class AdditionProblem implements Problem {

  final int operand1;
  final int operand2;

  AdditionProblem(this.operand1, this.operand2);

  @override
  List<String> get correctAnswers => [_getAnswer()];

  @override
  String get displayText => "$operand1 + $operand2 = ?";

  @override
  bool isCorrect(String answer) => answer.trim() == _getAnswer();

  @override
  ProblemType get type => ProblemType.addition;
  
  String _getAnswer() {
    return (operand1 + operand2).toString();
  }
}