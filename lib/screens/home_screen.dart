import 'package:fastmath/challenge/screens/challenge_config_screen.dart';
import 'package:fastmath/widgets/top_level_page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  static const String route = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TopLevelPageScaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.build),
                  SizedBox(width: 8),
                  Text("This page is not yet ready."),
                ],
              ),
              Text("But trainings are."),
              const SizedBox(height: 16),
              OutlinedButton.icon(
                iconAlignment: IconAlignment.end,
                icon: Icon(Icons.arrow_forward),
                onPressed: () => context.go("/trainings"),
                label: Text("See trainings"),
              ),
              const SizedBox(height: 16),
              OutlinedButton.icon(
                iconAlignment: IconAlignment.start,
                icon: Icon(Icons.arrow_back),
                onPressed: () => context.go(ChallengeConfigScreen.routeName),
                label: Text("Checkout challenge"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
