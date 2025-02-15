import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fastmath/training/data/model/training_models.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "training_repository.g.dart";

@Riverpod(keepAlive: true)
Future<Map<String, Training>> trainingPacks(Ref ref) async {
  final allPacks = await ref.watch(allTrainingPacksProvider.future);
  return Future(() => {
    for (var training in allPacks.expand((pack) => pack.trainings))
      training.id: training
  });
}

@Riverpod(keepAlive: true)
Future<List<Training>> allTrainings(Ref ref) async {
  final String response = await rootBundle.loadString("assets/math-trainings.json");
  final json = jsonDecode(response) as Map<String, dynamic>;
  final allTrainings = AllTrainings.fromJson(json);
  return allTrainings.trainings;
} 

@riverpod
Future<List<TrainingsPack>> allTrainingPacks(Ref ref) async {
  final allTrainings = await ref.watch(allTrainingsProvider.future);

  final byPack = groupBy(allTrainings, (training) => training.pack);
  final allPacks = byPack.entries.map((entry) => TrainingsPack(name: entry.key, trainings: entry.value)).toList();
  return Future.value(allPacks);
}
