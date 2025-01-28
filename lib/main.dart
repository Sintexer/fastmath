import 'package:fastmath/screens/home_screen.dart';
import 'package:fastmath/screens/training_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'FastMath',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.blueGrey,
          brightness: Brightness.light,
        ),
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomeScreen(),
          '/trainings': (context) => TrainingListScreen(),
        },
      ),
    ),
  );
}
