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
    _pageController = PageController(
        initialPage: ref.read(currentTrainingProblemIndexProvider));
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

    final Training? training =
        ref.watch(trainingPacksProvider.select((value) => value[widget.id]));
    if (training == null) {
      return TrainingLoading();
    }

    final isTrainingFinished = ref.watch(isTrainingFinishedProvider);

    if (isTrainingFinished) {
      return Scaffold(
        appBar: AppBar(title: Text("Results")),
        body: _buildResults(context, ref, training),
      );
    }

    final trainingState = ref.watch(trainingStateProvider);

    return Scaffold(
      appBar: AppBar(
          title: Text("Training, correct=${trainingState.correctAnswers}")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: PageView.builder(
          controller: _pageController,
          // onPageChanged: (index) =>
          //     ref.read(currentTrainingProblemIndexProvider.notifier).next(),
          itemCount: training.problems.length,
          itemBuilder: (context, index) {
            final problem = training.problems[index];
            return ProblemCard(
              key: ValueKey(problem.question),
              problem: problem,
              isLast: training.problems.length - 1 == index,
              onNextPressed: () {
                if (index < training.problems.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                  ref.read(currentTrainingProblemIndexProvider.notifier).next();
                } else {
                  ref.read(isTrainingFinishedProvider.notifier).finish();
                }
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildResults(BuildContext context, WidgetRef ref, Training training) {
    final trainingState = ref.watch(trainingStateProvider);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You've completed the training"),
            const SizedBox(height: 24),
            Text("Total questions: ${training.problems.length}"),
            Text("Correct answers: ${trainingState.correctAnswers}"),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(trainingStateProvider);
                ref.invalidate(currentTrainingProblemIndexProvider);
                ref.invalidate(isTrainingFinishedProvider);
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
  final VoidCallback onNextPressed;

  const ProblemCard({
    super.key,
    required this.problem,
    required this.isLast,
    required this.onNextPressed,
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
                    ref.read(trainingStateProvider.notifier).recordAnswer(true);
                    onNextPressed();
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
