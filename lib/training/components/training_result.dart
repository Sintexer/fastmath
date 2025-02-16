import 'package:fastmath/duration/duration_text.dart';
import 'package:fastmath/training/data/model/training_models.dart';
import 'package:fastmath/training/providers/training_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TrainingResult extends ConsumerWidget {
  final Training training;
  final TrainingProgress trainingState;

  const TrainingResult({
    super.key,
    required this.training,
    required this.trainingState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var timeSpent = Duration(seconds: 0);
    var statistics = trainingState.statistics;
    if (statistics.startTime != null &&
        trainingState.statistics.endTime != null) {
      timeSpent = statistics.endTime!.difference(statistics.startTime!);
    }
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Well done!",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 24),
            if (timeSpent.inHours < 1)
              Row(mainAxisSize: MainAxisSize.min, children: [
                Text("Time spent:"),
                SizedBox(width: 4),
                DurationText(duration: timeSpent),
              ]),
            const SizedBox(height: 12),
            Text("Total questions: ${trainingState.questionsOrder.length}"),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton.icon(
                  onPressed: () => context.go("/trainings"),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text("All Trainings"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () =>
                      ref.invalidate(trainingStateProvider(training)),
                  child: const Text("Continue training"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
