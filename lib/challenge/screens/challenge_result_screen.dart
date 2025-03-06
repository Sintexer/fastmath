

import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChallengeResultScreen extends ConsumerWidget {

  static const routeName = "/challenge/result";

  final ChallengeResult result;

  const ChallengeResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Hooray"),),
      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
        Text("Challenge completed"),
        const SizedBox(height: 16),
        Text("Correct answers: ${result.correctAnswers} / ${result.totalQuestions}"),
        const SizedBox(height: 16),
        Text("Well done"),
        const SizedBox(height: 32),
        ElevatedButton(onPressed: () => context.go("/"), child: Text("Back to the main screen"))
      ],),),
    );
  }
}