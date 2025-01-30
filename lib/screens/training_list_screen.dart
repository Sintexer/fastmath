import 'package:fastmath/data/models/math_training.dart';
import 'package:fastmath/data/repositories/training_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainingListScreen extends ConsumerWidget {
  static const String route = "/trainings";

  const TrainingListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allTrainings = ref.watch(allMathTrainingsProvider);

    return ListView(
      children: allTrainings.map((training) {
        return MathTrainingCard(training: training);
      }).toList(),
    );
  }
}

class MathTrainingCard extends StatelessWidget {
  const MathTrainingCard({
    required this.training,
    super.key,
  });

  final MathTraining training;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.calculate),
        title: Text(training.title),
        onTap: () async {
          final specificTraining = training;
          final randomQuestion =
              ((specificTraining.problems.toList()..shuffle()).first.question);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Random Question: $randomQuestion'),
              duration: Duration(milliseconds: 100),
            ),
          );
        },
      ),
    );
  }
}
