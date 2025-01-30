import 'package:fastmath/data/models/math_training.dart';
import 'package:fastmath/data/models/math_trainings_pack.dart';
import 'package:fastmath/data/repositories/training_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class TrainingsScreen extends ConsumerWidget {
  static const String route = "/trainings";

  const TrainingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allTrainingsPacks = ref.watch(allMathTrainingsPacksProvider);

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView.builder(
            itemCount: allTrainingsPacks.length,
            itemBuilder: (_, index) =>
                TrainingList(pack: allTrainingsPacks[index])));

    // return ListView.builder(itemCount: allTrainingsPacks.length, itemBuilder: (context, index) {
    //   return TrainingList(pack: allTrainingsPacks[index]);
    // });
  }
}

class TrainingList extends StatelessWidget {
  const TrainingList({super.key, required this.pack});

  final MathTrainingsPack pack;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(alignment: Alignment.centerLeft, child: Text(pack.name, style: TextTheme.of(context).displayMedium,), padding: EdgeInsets.symmetric(vertical: 4),),
      ResponsiveGridList(
          minItemWidth: 200,
          listViewBuilderOptions: ListViewBuilderOptions(
              shrinkWrap: true, physics: ClampingScrollPhysics()),
          children: pack.trainings
              .map((it) => MathTrainingCard(training: it))
              .toList()),
    ]);
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
    return Container(
      width: 200,
      height: 300,
      child: Card(
        child: ListTile(
          leading: Icon(Icons.calculate),
          title: Text(training.title),
          onTap: () async {
            final specificTraining = training;
            final randomQuestion = ((specificTraining.problems.toList()
                  ..shuffle())
                .first
                .question);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Random Question: $randomQuestion'),
                duration: Duration(milliseconds: 100),
              ),
            );
          },
        ),
      ),
    );
  }
}
