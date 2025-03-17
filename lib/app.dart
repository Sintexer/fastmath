import 'package:fastmath/challenge/data/challenge_models.dart';
import 'package:fastmath/challenge/screens/challenge_config_screen.dart';
import 'package:fastmath/challenge/screens/challenge_result_screen.dart';
import 'package:fastmath/challenge/screens/challenge_screen.dart';
import 'package:fastmath/screens/home_screen.dart';
import 'package:fastmath/training/screens/trainings_screen.dart';
import 'package:fastmath/training/screens/training_screen.dart';
import 'package:fastmath/units/addition/addition_unit_screen.dart';
import 'package:fastmath/units/units_screen.dart';
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
            name: "challengeResult",
            builder: (context, state) {
                final result = state.extra as ChallengeResult;
                return ChallengeResultScreen(result: result);
              },
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
    GoRoute(
      path: '/units',
      builder: (context, state) => const UnitsScreen(),
      routes: [
        GoRoute(
          path: "/addition",
          builder: (context, state) => AdditionUnitScreen(),
        ),
        GoRoute(
          path: "/subtraction",
          builder: (context, state) => AdditionUnitScreen(),
        ),
        GoRoute(
          path: "/multiplication",
          builder: (context, state) => AdditionUnitScreen(),
        ),
        GoRoute(
          path: "/division",
          builder: (context, state) => AdditionUnitScreen(),
        ),
        GoRoute(
          path: "/percent",
          builder: (context, state) => AdditionUnitScreen(),
        ),
        GoRoute(
          path: "/power",
          builder: (context, state) => AdditionUnitScreen(),
        ),
      ],
    ),
  ],
);

class FastMathApp extends StatelessWidget {
  const FastMathApp({super.key});

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
