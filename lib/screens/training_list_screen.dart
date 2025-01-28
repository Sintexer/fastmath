import 'package:fastmath/data/models/math_training.dart';
import 'package:fastmath/data/repositories/training_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainingListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trainingRepository = ref.watch(trainingRepositoryProvider);

    return FutureBuilder<List<MathTraining>>(
      future: trainingRepository.fetchAllTrainings(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No Trainings Available'));
        } else {
          return ListView(
            children: snapshot.data!.map((training) {
              return Card(
                child: ListTile(
                  leading: Icon(Icons.calculate),
                  title: Text(training.title),
                  onTap: () async {
                    final specificTraining = await trainingRepository.fetchTrainingByTitle(training.title);
                    final randomQuestion = (specificTraining.problems..shuffle()).first.question;

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Random Question: $randomQuestion')),
                    );
                  },
                ),
              );
            }).toList(),
          );
        }
      },
    );
  }
}