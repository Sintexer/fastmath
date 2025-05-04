import 'package:fastmath/problem/problem_type.dart';

/// Represents a mathematical problem that can be presented to the user.
///
/// This interface defines the contract for all problem types in the FastMath app.
/// Implementations should provide specific problem logic for different mathematical operations.
abstract interface class Problem {
  /// Human-readable text representation of the problem.
  ///
  /// Example: "12 + 34 = ?"
  String get displayText;

  /// The type of mathematical problem.
  ProblemType get type;

  /// List of all correct answers for this problem.
  ///
  /// Most problems will have a single correct answer, but some might have multiple.
  /// Example: ["46"] for "12 + 34 = ?"
  List<String> get correctAnswers;

  /// Checks if the provided answer is correct.
  ///
  /// This method should handle any necessary formatting or validation.
  /// 
  /// @param answer The user's answer as a string
  /// @return true if the answer is correct, false otherwise
  bool isCorrect(String answer);
}