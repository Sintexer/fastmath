import 'package:fastmath/training/components/training_card.dart';
import 'package:fastmath/training/components/training_result.dart';
import 'package:fastmath/training/data/model/training_models.dart';
import 'package:fastmath/training/data/repository/training_repository.dart';
import 'package:fastmath/training/providers/training_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const int cardeChangeDuration = 180;

class TrainingScreen extends ConsumerStatefulWidget {
  final String? id;
  const TrainingScreen({super.key, required this.id});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends ConsumerState<TrainingScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.id == null) {
      return TrainingLoading();
    }

    final training = ref.watch(trainingPacksProvider.select((v) =>
        switch (v) { AsyncData(:final value) => value[widget.id], _ => null }));
    if (training == null) {
      return TrainingLoading();
    }

    final trainingState = ref.watch(trainingStateProvider(training));

    if (trainingState.finished) {
      return Scaffold(
        appBar: AppBar(title: Text("${training.pack} training result")),
        body: _buildResults(context, ref, training),
      );
    }

    final total = trainingState.questionsOrder.length;
    return Scaffold(
      appBar: AppBar(title: Text("${training.pack} training")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: PageView.builder(
          controller: _pageController,
          itemCount: trainingState.questionsOrder.length,
          itemBuilder: (context, index) {
            final problemIndex = trainingState.questionsOrder[index];
            final problem = training.problems[problemIndex];
            final isLast = index + 1 == total;
            return TrainingCard(
              key: ValueKey(problem.question),
              problem: problem,
              index: index,
              total: total,
              onNext: () {
                if (isLast) {
                  ref.read(trainingStateProvider(training).notifier).finish();
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: cardeChangeDuration),
                    curve: Curves.easeInOut,
                  );
                }
              },
              onPrevios: () {
                if (index > 0) {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: cardeChangeDuration),
                    curve: Curves.easeInOut,
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildResults(BuildContext context, WidgetRef ref, Training training) {
    final trainingState = ref.watch(trainingStateProvider(training));
    return TrainingResult(training: training, trainingState: trainingState);
  }
}

class TrainingLoading extends StatelessWidget {
  const TrainingLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
