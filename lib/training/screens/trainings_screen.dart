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
          child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(height: 24,),
            itemCount: value.length,
            itemBuilder: (_, index) => PackTrainingList(pack: value[index]),
          ),
        ),
      AsyncError() => const Text("Oops, something went wrong"),
      _ => const CircularProgressIndicator()
    });
  }
}

class PackTrainingList extends StatelessWidget {
  const PackTrainingList({super.key, required this.pack});

  final TrainingsPack pack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            "${pack.name} trainings",
            style: TextTheme.of(context).titleLarge,
          ),
        ),
        ResponsiveGridList(
          
            minItemWidth: 200,
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true, physics: ClampingScrollPhysics()),
            children: pack.trainings
                .map((it) => MathTrainingCard(training: it))
                .toList()),
      ]),
    );
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
    var textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 250,
      // height: 150,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () async {
            context.go("/trainings/${training.id}/quiz");
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.calculate),
                    SizedBox(width: 10.0),
                    Text(
                      training.title,
                      style: textTheme.bodyLarge,
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  "Total problems: ${training.problems.length}",
                  style: textTheme.bodySmall,
                ),
                Text(
                  "Training length: 10 problems",
                  style: textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
