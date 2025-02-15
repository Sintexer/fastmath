import 'package:fastmath/training/data/model/training_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'training_providers.g.dart';

@riverpod
class TrainingState extends _$TrainingState {

  @override
  TrainingProgress build(Training training) {
    print("Building training state");
    final questionsOrder = training.problems.indexed.map((pair) => pair.$1).toList();
    questionsOrder.shuffle();
    return TrainingProgress(questionsOrder: questionsOrder);
  }

  void recordAnswer(bool isCorrect) {
    if (isCorrect) {
      final correctAnswers = state.statistics.correctAnswers + 1;
      state = state.copyWith(statistics: state.statistics.copyWith(correctAnswers: correctAnswers));
    }
  }

  void nextQuestion() {
    state = state.copyWith(index: state.index + 1);
  }
}
