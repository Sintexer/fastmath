import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/challenge/providers/challenge_providers.dart';
import 'package:fastmath/challenge/screens/challenge_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChallengeScreen extends ConsumerWidget {
  static const routeName = "/challenge/quiz";

  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final challenge = ref.watch(challengeStateProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Challenge")),
      body: Center(
        child: SizedBox(
          width: 700,
          child: switch (challenge) {
            AsyncData(value: final challengeProgress) => Builder(builder: (_) {
                final currentIndex = challengeProgress.answers.length;
                final hasCompleted =
                    currentIndex >= challengeProgress.problems.length;
                if (hasCompleted) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.pushReplacementNamed(
                        context, ChallengeResultScreen.routeName);
                  });
                  return const SizedBox.shrink();
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
                        onAnswerSelected: (answer) {
                          ref
                              .read(challengeStateProvider.notifier)
                              .submitAnswer(answer);
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
    return Card(
      child: Center(
        child: Text(question, style: Theme.of(context).textTheme.displayMedium,),
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

    return Wrap(
      spacing: 16,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: answers.map((answer) {
        return SizedBox(
          width: 130, // Explicit width for the button
          height: 50, // Explicit height for the button
          child: ChallengeAnswerButton(
            answer,
            onAnswerSelected: onAnswerSelected,
          ),
        );
      }).toList(),
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
      child: Center(
        child: SizedBox(
          child: Center(child: Text(data, style: Theme.of(context).textTheme.bodyLarge,)),
        ),
      ),
    );
  }
}
