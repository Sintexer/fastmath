import 'package:fastmath/widgets/top_level_page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UnitsScreen extends ConsumerWidget {
  const UnitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TopLevelPageScaffold(
      body: Center(
        child: SizedBox(
          width: 600,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 24.0,
            children: [
              UnitChoiceButton("Addition", route: "/units/addition"),
              UnitChoiceButton("Subtraction", route: "/units/subtraction"),
              UnitChoiceButton("Multiplication", route: "/units/multiplication"),
              UnitChoiceButton("Division", route: "/units/division"),
              UnitChoiceButton("Percent calculation", route: "/units/percent"),
              UnitChoiceButton("Power calculation", route: "/units/power"),
            ],
          ),
        ),
      ),
    );
  }
}

class UnitChoiceButton extends StatelessWidget {
  final String text;
  final String route;

  const UnitChoiceButton(this.text, {super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: () => context.go(route),
        child: Text(text),
      ),
    );
  }
}
