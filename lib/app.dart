import 'package:fastmath/challenge/screens/challenge_config_screen.dart';
import 'package:fastmath/challenge/screens/challenge_result_screen.dart';
import 'package:fastmath/challenge/screens/challenge_screen.dart';
import 'package:fastmath/screens/home_screen.dart';
import 'package:fastmath/training/screens/trainings_screen.dart';
import 'package:fastmath/training/screens/training_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: ChallengeConfigScreen.routeName,
            builder: (context, state) => const ChallengeConfigScreen(),
          ),
          GoRoute(
            path: ChallengeScreen.routeName,
            builder: (context, state) => const ChallengeScreen(),
          ),
          GoRoute(
            path: ChallengeResultScreen.routeName,
            builder: (context, state) => const ChallengeResultScreen(),
          ),
        ]),
    GoRoute(
      path: '/trainings',
      builder: (context, state) => const TrainingsScreen(),
      routes: [
        GoRoute(
          path: "/:id/quiz",
          builder: (context, state) => TrainingScreen(
            id: state.pathParameters['id'],
          ),
        )
      ],
    ),
  ],
);

class FastMathApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Fast Math',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
    );
  }
}
