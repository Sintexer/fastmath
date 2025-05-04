import 'package:fastmath/problem/solution.dart';

class AdditionSolution implements Solution {

  final int operand1;
  final int operand2;

  AdditionSolution(this.operand1, this.operand2);

  @override
  String get answer => (operand1 + operand2).toString();

  @override
  /// Too easy
  List<String> get steps => [];

}