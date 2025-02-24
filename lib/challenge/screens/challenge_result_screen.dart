

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChallengeResultScreen extends ConsumerWidget {

  static const routeName = "/challenge/result";

  const ChallengeResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Hooray"),),
      body: Center(child: Text("Challenge completed"),),
    );
  }
}