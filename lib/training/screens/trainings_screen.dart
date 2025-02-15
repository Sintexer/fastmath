import 'package:fastmath/training/data/model/training_models.dart';
import 'package:fastmath/training/data/repository/training_repository.dart';
import 'package:fastmath/widgets/top_level_page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class TrainingsScreen extends ConsumerWidget {
  static const String route = "/trainings";

  const TrainingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<TrainingsPack>> allTrainingsPacks =
        ref.watch(allTrainingPacksProvider);
    return TopLevelPageScaffold(
        body: switch (allTrainingsPacks) {
      AsyncData(:final value) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: ListView.builder(
            itemCount: value.length,
            itemBuilder: (_, index) => TrainingList(pack: value[index]),
          ),
        ),
      AsyncError() => const Text("Oops, something went wrong"),
      _ => const CircularProgressIndicator()
    });
  }
}

class TrainingList extends StatelessWidget {
  const TrainingList({super.key, required this.pack});

  final TrainingsPack pack;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          pack.name,
          style: TextTheme.of(context).displayMedium,
        ),
      ),
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

class MathTrainingCard extends ConsumerWidget {
  const MathTrainingCard({
    required this.training,
    super.key,
  });

  final Training training;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 200,
      height: 300,
      child: Card(
        child: ListTile(
          leading: Icon(Icons.calculate),
          title: Text(training.title),
          onTap: () async {
            context.go("/trainings/${training.id}/quiz");
          },
        ),
      ),
    );
  }
}
