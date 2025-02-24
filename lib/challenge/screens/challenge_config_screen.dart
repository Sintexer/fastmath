import 'package:fastmath/challenge/providers/challenge_providers.dart';
import 'package:fastmath/challenge/screens/challenge_screen.dart';
import 'package:fastmath/model/math.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChallengeConfigScreen extends ConsumerWidget {
  static const routeName = "/challenge/config";

  const ChallengeConfigScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(challengeConfigStateProvider);
    final configNotifier = ref.read(challengeConfigStateProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text("Configure challenge")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.abc,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(width: 8),
                      Text('Number of problems: ${config.length}',
                          style: Theme.of(context).textTheme.titleLarge),
                    ],
                  ),
                  SizedBox(
                    width: 280,
                    child: Slider(
                      value: config.length.toDouble(),
                      min: 5,
                      max: 30,
                      divisions: 5,
                      label: '${config.length}',
                      onChanged: (value) {
                        configNotifier.setLength(value.toInt());
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.category,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: 8),
                  Text('Select topics',
                      style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                children: Topic.values
                    .map((topic) => ChoiceChip(
                          label: Text(topic.name),
                          selected: config.topics.contains(topic),
                          onSelected: (isSelected) {
                            final updatedTopics = isSelected
                                ? [...config.topics, topic]
                                : config.topics
                                    .where((t) => t != topic)
                                    .toList();
                            configNotifier.setTopics(updatedTopics);
                          },
                        ))
                    .toList(),
              ),
              Spacer(),
              Container(
                alignment: Alignment.bottomRight,
                child: OutlinedButton(
                  onPressed: () {
                    context.go(ChallengeScreen.routeName);
                    // context.go('/quiz');
                  },
                  child: Text('Start Challenge'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
