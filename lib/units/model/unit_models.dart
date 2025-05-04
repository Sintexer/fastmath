
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_models.freezed.dart';
part 'unit_models.g.dart';

@freezed
class MathUnit with _$MathUnit {
  const factory MathUnit({
    required String name,
    required List<UnitLesson> lessons
  }) = _Unit;

  factory MathUnit.fromJson(Map<String, dynamic> json) => _$MathUnitFromJson(json);
  
}


@freezed
class UnitLesson with _$UnitLesson {
  const factory UnitLesson({
    required String id,
    required LessonType type,
    required String problemGeneratorId
  }) = _UnitLesson;

  factory UnitLesson.fromJson(Map<String, dynamic> json) => _$UnitLessonFromJson(json);
}

enum LessonType{
  challenge,
  trick,
  fast
}