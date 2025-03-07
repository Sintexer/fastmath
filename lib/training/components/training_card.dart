import 'package:fastmath/training/data/model/training_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const double cardPadding = 20.0;

class TrainingCard extends ConsumerStatefulWidget {
  final TrainingProblem problem;
  final int index;
  final int total;
  final VoidCallback onNext;
  final VoidCallback onPrevios;

  const TrainingCard({
    super.key,
    required this.problem,
    required this.index,
    required this.total,
    required this.onNext,
    required this.onPrevios,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProblemCardState();
}

class _ProblemCardState extends ConsumerState<TrainingCard> {
  bool _answerShown = false;

  void showAnswer() => setState(() {
        _answerShown = true;
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(cardPadding),
            alignment: Alignment.topRight,
            child: Text(
              "${widget.index + 1}/${widget.total}",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.index > 0
                        ? CardNavigationButton(
                            alignment: Alignment.bottomLeft,
                            onPressed: widget.onPrevios,
                            text: "Previous",
                          )
                        : Expanded(child: SizedBox()),
                    SizedBox(width: cardPadding),
                    CardNavigationButton(
                      alignment: Alignment.bottomRight,
                      onPressed: widget.onNext,
                      text: _isLast() ? "Finish" : "Next",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: showAnswer,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "${widget.problem.question} = ${_answerShown ? widget.problem.answer : '?'}",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isLast() => widget.index + 1 == widget.total;
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
        height: 120,
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
