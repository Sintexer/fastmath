import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {

  static const String route = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text(
        'Hello, World!',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
