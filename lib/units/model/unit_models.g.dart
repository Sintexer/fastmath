// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitImpl _$$UnitImplFromJson(Map<String, dynamic> json) => _$UnitImpl(
      name: json['name'] as String,
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => UnitLesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UnitImplToJson(_$UnitImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lessons': instance.lessons,
    };

_$UnitLessonImpl _$$UnitLessonImplFromJson(Map<String, dynamic> json) =>
    _$UnitLessonImpl(
      id: json['id'] as String,
      type: $enumDecode(_$LessonTypeEnumMap, json['type']),
      problemGeneratorId: json['problemGeneratorId'] as String,
    );

Map<String, dynamic> _$$UnitLessonImplToJson(_$UnitLessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$LessonTypeEnumMap[instance.type]!,
      'problemGeneratorId': instance.problemGeneratorId,
    };

const _$LessonTypeEnumMap = {
  LessonType.challenge: 'challenge',
  LessonType.trick: 'trick',
  LessonType.fast: 'fast',
};
