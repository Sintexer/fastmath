import 'package:fastmath/data/models/math_trainings_pack.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/math_training.dart';
import '../models/math_problem.dart';

part "training_repository.g.dart";

@riverpod
List<MathTrainingsPack> allMathTrainingsPacks(Ref ref) {

  final additionLevel1 = MathTraining(title: "Addition level 1", problems: [
    MathProblem(question: '2 + 2', answer: "4"),
    MathProblem(question: '3 + 5', answer: "8"),
    MathProblem(question: '93 + 5', answer: "98"),
    MathProblem(question: '39 + 3', answer: "42"),
    MathProblem(question: '78 + 7', answer: "85"),
    // Add more problems as needed
  ]);
  final additionLevel2 = MathTraining(title: "Addition level 2", problems: [
    MathProblem(question: '2 + 2', answer: "4"),
    MathProblem(question: '3 + 5', answer: "8"),
    MathProblem(question: '93 + 5', answer: "98"),
    MathProblem(question: '39 + 3', answer: "42"),
    MathProblem(question: '78 + 7', answer: "85"),
    // Add more problems as needed
  ]);
  final subtractionLevel1 = MathTraining(title: "Subtraction level 1", problems: [
    MathProblem(question: '2 - 2', answer: "4"),
    MathProblem(question: '3 - 5', answer: "8"),
    MathProblem(question: '93 - 5', answer: "98"),
    MathProblem(question: '39 - 3', answer: "42"),
    MathProblem(question: '78 - 7', answer: "85"),
    // Add more problems as needed
  ]);
  final subtractionLevel2 = MathTraining(title: "Subtraction level 2", problems: [
    MathProblem(question: '2 - 2', answer: "4"),
    MathProblem(question: '3 - 5', answer: "8"),
    MathProblem(question: '93 - 5', answer: "98"),
    MathProblem(question: '39 - 3', answer: "42"),
    MathProblem(question: '78 - 7', answer: "85"),
    // Add more problems as needed
  ]);



  return [
    MathTrainingsPack(name: "Addition", trainings: [additionLevel1, additionLevel2]),
    MathTrainingsPack(name: "Subtraction", trainings: [subtractionLevel1, subtractionLevel2])
  ];
}