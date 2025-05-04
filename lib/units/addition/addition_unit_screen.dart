import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class AdditionUnitScreen extends ConsumerWidget {
  const AdditionUnitScreen({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Addition unit")),
      body: Column(children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(bottom: 16),
          child: Text(
            "Addition unit",
            style: TextTheme.of(context).titleLarge,
          ),
        ),
          // ResponsiveGridList(

          //     minItemWidth: 300,
          //     listViewBuilderOptions: ListViewBuilderOptions(
          //         shrinkWrap: true, physics: ClampingScrollPhysics()),
          //     children: unit.trainings
          //         .map((it) => UnitLessonCard(training: it))
          //         .toList()),
      ],),
    );
  }
}

class UnitLessonCard extends ConsumerWidget {
  const UnitLessonCard({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var textTheme = Theme.of(context).textTheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () async {
          // context.go("/trainings/${training.id}/quiz");
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
                    "TODO",
                    // training.title,
                    style: textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                "Total problems ",
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
