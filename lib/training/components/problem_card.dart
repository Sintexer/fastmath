import 'package:fastmath/training/data/model/training_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const double cardPadding = 20.0;

class ProblemCard extends ConsumerWidget {
  final TrainingProblem problem;
  final int index;
  final int total;
  final VoidCallback onNext;
  final VoidCallback onPrevios;

  const ProblemCard({
    super.key,
    required this.problem,
    required this.index,
    required this.total,
    required this.onNext,
    required this.onPrevios,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 3,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(cardPadding),
            alignment: Alignment.topRight,
            child: Text("${index + 1}/$total"),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 200,
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    index > 0
                        ? CardNavigationButton(
                            alignment: Alignment.bottomLeft,
                            onPressed: onPrevios,
                            text: "Previous",
                          )
                        : Expanded(child: SizedBox()),
                    SizedBox(width: cardPadding),
                    CardNavigationButton(
                      alignment: Alignment.bottomRight,
                      onPressed: onNext,
                      text: _isLast() ? "Finish" : "Next",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "${problem.question} = ?",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  bool _isLast() => index + 1 == total;
}

class CardNavigationButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Alignment alignment;

  const CardNavigationButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 200,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: alignment,
            padding: const EdgeInsets.all(cardPadding),
          ),
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
