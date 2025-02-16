

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
            Text("You've completed the training"),
            const SizedBox(height: 24),
            Text("Total questions: ${training.problems.length}"),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // ref.invalidate(trainingStateProvider(training));
                context.go("/trainings");
              },
              child: const Text("Go to Trainings"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(trainingStateProvider(training));
              },
              child: const Text("Train again"),
            ),
          ],
        ),
      ),
    );
  }
}
