import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdditionUnitScreen extends ConsumerWidget {
  const AdditionUnitScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Addition")),
      body: Center(
        child: Text("Addition"),
      ),
    );
  }
}
