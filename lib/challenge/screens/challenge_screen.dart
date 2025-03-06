import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/challenge/providers/challenge_providers.dart';
import 'package:fastmath/challenge/screens/challenge_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class ChallengeScreen extends ConsumerWidget {
  static const routeName = "/challenge/quiz";

  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final challenge = ref.watch(challengeStateProvider);

// TODO prevent accidental back button press
    return Scaffold(
      appBar: AppBar(title: Text("Challenge")),
      body: Center(
        child: SizedBox(
          width: 700,
          child: switch (challenge) {
            AsyncData(value: final challengeProgress) => Builder(builder: (_) {
                final currentIndex = challengeProgress.answers.length;
                if (currentIndex >= challengeProgress.problems.length) {
                  return CircularProgressIndicator();
                }
                final currentProblem = challengeProgress.problems[currentIndex];

                return Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ChallengeProblemCard(
                            question: currentProblem.question),
                      ),
                      SizedBox(height: 32),
                      ChallengeProblemAnswerOptions(
                        problem: currentProblem,
                        onAnswerSelected: (answer) async {
                          final finished = await ref
                              .read(challengeStateProvider.notifier)
                              .submitAnswer(answer);

                          if (finished) {
                            final result = await ref
                                .read(challengeStateProvider.notifier)
                                .calculateResult();
                            if (context.mounted) {
                              context.go(ChallengeResultScreen.routeName,
                                  extra: result);
                            }
                          }
                        },
                      ),
                    ],
                  ),
                );
              }),
            _ => CircularProgressIndicator()
          },
        ),
      ),
    );
  }
}

class ChallengeProblemCard extends StatelessWidget {
  final String question;
  const ChallengeProblemCard({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        question,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}

class ChallengeProblemAnswerOptions extends StatelessWidget {
  final ChallengeProblem problem;
  final ValueChanged<String> onAnswerSelected;
  const ChallengeProblemAnswerOptions(
      {super.key, required this.problem, required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    final mockAnswers = [...problem.mockAnswers].take(3);
    if (mockAnswers.length < 3) {
      return Center(
        child: ChallengeAnswerButton(problem.correctAnswer,
            onAnswerSelected: onAnswerSelected),
      );
    }
    final answers = [...mockAnswers, problem.correctAnswer];
    answers.shuffle();

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: answers
          .map((answer) =>
              ChallengeAnswerButton(answer, onAnswerSelected: onAnswerSelected))
          .toList(),
    );
  }
}

class ChallengeAnswerButton extends StatelessWidget {
  final String data;
  final ValueChanged<String> onAnswerSelected;
  const ChallengeAnswerButton(this.data,
      {super.key, required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onAnswerSelected(data),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Center(
        child: SizedBox(
          height: 200,
          child: Center(
              child: Text(
            data,
            style: Theme.of(context).textTheme.bodyLarge,
          )),
        ),
      ),
    );
  }
}
