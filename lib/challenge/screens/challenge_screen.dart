


import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/challenge/providers/challenge_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChallengeScreen extends ConsumerWidget {

  static const routeName = "/challenge/quiz";

  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final config = ref.watch(challengeConfigStateProvider);
    final challenge = ref.watch(challengeStateProvider);

    return Scaffold(
        appBar: AppBar(title: Text("Challenge")),
        body: Center(
          child: switch(challenge) {
            AsyncData(:final value) => Text("challenge: ${value.problems[0]}"),
            _ => CircularProgressIndicator()
          },
        ),
      );



  }
}