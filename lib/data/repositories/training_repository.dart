import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/math_training.dart';
import '../models/math_problem.dart';

class TrainingRepository {
  Future<List<MathTraining>> fetchAllTrainings() async {
    // Simulate fetching data, e.g., from an API or a local database
    final additionLevel1 = MathTraining(title: "Addition level 1", problems: [
      MathProblem(question: '2 + 2', answer: "4"),
      MathProblem(question: '3 + 5', answer: "8"),
      MathProblem(question: '93 + 5', answer: "98"),
      MathProblem(question: '39 + 3', answer: "42"),
      MathProblem(question: '78 + 7', answer: "85"),
      // Add more problems as needed
    ]);

    return [additionLevel1];
  }

  Future<MathTraining> fetchTrainingByTitle(String title) async {
    final trainings = await fetchAllTrainings();
    return trainings.firstWhere((training) => training.title == title);
  }
}

final trainingRepositoryProvider = Provider<TrainingRepository>((ref) {
  return TrainingRepository();
});
