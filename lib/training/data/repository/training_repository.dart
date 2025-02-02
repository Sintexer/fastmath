import 'package:fastmath/training/data/model/training_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "training_repository.g.dart";

@riverpod
Map<String, Training> trainingPacks(Ref ref) {
  final allPacks = ref.watch(allTrainingPacksProvider);
  return {
    for (var training in allPacks.expand((pack) => pack.trainings))
      training.id: training
  };
}

@riverpod
List<TrainingsPack> allTrainingPacks(Ref ref) {
  final additionLevel1 =
      Training(id: '1', title: "Addition level 1", problems: [
    TrainingProblem(question: '2 + 2', answer: "4"),
    TrainingProblem(question: '3 + 5', answer: "8"),
    TrainingProblem(question: '93 + 5', answer: "98"),
    TrainingProblem(question: '39 + 3', answer: "42"),
    TrainingProblem(question: '78 + 7', answer: "85"),
  ]);
  final additionLevel2 =
      Training(id: '2', title: "Addition level 2", problems: [
    TrainingProblem(question: '2 + 2', answer: "4"),
    TrainingProblem(question: '3 + 5', answer: "8"),
    TrainingProblem(question: '93 + 5', answer: "98"),
    TrainingProblem(question: '39 + 3', answer: "42"),
    TrainingProblem(question: '78 + 7', answer: "85"),
  ]);
  final subtractionLevel1 =
      Training(id: '101', title: "Subtraction level 1", problems: [
    TrainingProblem(question: '2 - 2', answer: "4"),
    TrainingProblem(question: '3 - 5', answer: "8"),
    TrainingProblem(question: '93 - 5', answer: "98"),
    TrainingProblem(question: '39 - 3', answer: "42"),
    TrainingProblem(question: '78 - 7', answer: "85"),
  ]);
  final subtractionLevel2 =
      Training(id: '102', title: "Subtraction level 2", problems: [
    TrainingProblem(question: '2 - 2', answer: "4"),
    TrainingProblem(question: '3 - 5', answer: "8"),
    TrainingProblem(question: '93 - 5', answer: "98"),
    TrainingProblem(question: '39 - 3', answer: "42"),
    TrainingProblem(question: '78 - 7', answer: "85"),
  ]);

  return [
    TrainingsPack(name: "Addition", trainings: [
      additionLevel1,
      additionLevel2,
    ]),
    TrainingsPack(name: "Subtraction", trainings: [
      subtractionLevel1,
      subtractionLevel2,
    ])
  ];
}
