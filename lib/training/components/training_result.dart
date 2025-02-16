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
            Text(
                "You've answered ${trainingState.questionsOrder.length} questions in total"),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () => context.go("/trainings"),
                  icon: Icon(Icons.arrow_back),
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
