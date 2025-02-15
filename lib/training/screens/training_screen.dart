import 'package:fastmath/training/data/model/training_models.dart';
import 'package:fastmath/training/data/repository/training_repository.dart';
import 'package:fastmath/training/providers/training_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
        appBar: AppBar(title: Text("Results")),
        body: _buildResults(context, ref, training),
      );
    }

    final trainingStatistics = trainingState.statistics;

    return Scaffold(
      appBar: AppBar(
          title:
              Text("Training, correct=${trainingStatistics.correctAnswers}, total=${trainingState.questionsOrder.length}")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: PageView.builder(
          controller: _pageController,
          itemCount: trainingState.questionsOrder.length,
          itemBuilder: (context, index) {
            final problemIndex = trainingState.questionsOrder[index];
            final problem = training.problems[problemIndex];
            final isLast = trainingState.questionsOrder.length == index + 1;
            return ProblemCard(
              key: ValueKey(problem.question),
              problem: problem,
              isLast: isLast,
              onAnswer: (correct) {
                if (isLast) {
                  ref.read(trainingStateProvider(training).notifier).finish();
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
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

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You've completed the training"),
            const SizedBox(height: 24),
            Text("Total questions: ${training.problems.length}"),
            Text("Correct answers: ${trainingState.statistics.correctAnswers}"),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // ref.invalidate(trainingStateProvider(training));
                context.go("/trainings");
              },
              child: const Text("Go to Trainings"),
            ),
          ],
        ),
      ),
    );
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

class ProblemCard extends ConsumerWidget {
  final TrainingProblem problem;
  final bool isLast;
  final void Function(bool) onAnswer;

  const ProblemCard({
    super.key,
    required this.problem,
    required this.isLast,
    required this.onAnswer,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "${problem.question} = ?",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    onAnswer(true);
                  },
                  child: Text(isLast ? "Finish" : "Next"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
