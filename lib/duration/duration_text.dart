import 'package:flutter/material.dart';

class DurationText extends StatelessWidget {
  final Duration duration;
  const DurationText({
    super.key,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    int hours = duration.inHours;
    int minutes = duration.inMinutes;
    int seconds = duration.inSeconds;
    int milliseconds = duration.inMilliseconds % 1000;

    String hoursStr = hours > 0 ? "$hours:" : "";
    String minutesStr =
        (hours > 0 || minutes > 0) ? "$minutes:".padLeft(3, "0") : "";
    String secondsStr =
        "$seconds".padLeft(hours > 0 || minutes > 0 ? 2 : 1, "0");
    String millisecondsStr = duration.inSeconds < 10
        ? ".${milliseconds.toString().padLeft(3, "0")}"
        : "";

    final textTheme = Theme.of(context).textTheme;
    return RichText(
      text: TextSpan(
        style: textTheme.labelLarge,
        children: [
          TextSpan(text: hoursStr),
          TextSpan(text: minutesStr),
          TextSpan(text: secondsStr),
          if (millisecondsStr.isNotEmpty)
            TextSpan(
              text: millisecondsStr,
              style: textTheme.labelSmall,
            ),
          if (hours == 0 && minutes == 0) 
            TextSpan(text: " s")
        ],
      ),
    );
  }
}
