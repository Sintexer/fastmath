import 'package:fastmath/training/data/model/training_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'training_providers.g.dart';

@riverpod
class TrainingState extends _$TrainingState {

  @override
  TrainingStatistics build() {
    return TrainingStatistics();
  }

  void recordAnswer(bool isCorrect) {
    if (isCorrect) {

    state = state.copyWith(correctAnswers: state.correctAnswers + 1);
    }
  }
}

@riverpod
class CurrentTrainingProblemIndex extends _$CurrentTrainingProblemIndex {
  @override
  int build() {
    return 0;
  }

  void next() {
    ++state;
  }
}

@riverpod
class IsTrainingFinished extends _$IsTrainingFinished {
  @override
  bool build() {
    return false;
  }

  void finish() {
    state = true;
  }
}