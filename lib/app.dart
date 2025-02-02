import 'package:fastmath/screens/home_screen.dart';
import 'package:fastmath/training/screens/trainings_screen.dart';
import 'package:fastmath/training/screens/training_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
      path: '/trainings',
      builder: (context, state) => const TrainingsScreen(),
      routes: [
        GoRoute(
          path: "/:id/quiz",
          builder: (context, state) => TrainingScreen(id: state.pathParameters['id'],),
        )
      ])
]);

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
