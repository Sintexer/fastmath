// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingProblemImpl _$$TrainingProblemImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingProblemImpl(
      question: json['question'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$TrainingProblemImplToJson(
        _$TrainingProblemImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };

_$TrainingImpl _$$TrainingImplFromJson(Map<String, dynamic> json) =>
    _$TrainingImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      pack: json['pack'] as String,
      problems: (json['problems'] as List<dynamic>)
          .map((e) => TrainingProblem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainingImplToJson(_$TrainingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'pack': instance.pack,
      'problems': instance.problems,
    };

_$TrainingsPackImpl _$$TrainingsPackImplFromJson(Map<String, dynamic> json) =>
    _$TrainingsPackImpl(
      name: json['name'] as String,
      trainings: (json['trainings'] as List<dynamic>)
          .map((e) => Training.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainingsPackImplToJson(_$TrainingsPackImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'trainings': instance.trainings,
    };

_$AllTrainingsImpl _$$AllTrainingsImplFromJson(Map<String, dynamic> json) =>
    _$AllTrainingsImpl(
      trainings: (json['trainings'] as List<dynamic>)
          .map((e) => Training.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllTrainingsImplToJson(_$AllTrainingsImpl instance) =>
    <String, dynamic>{
      'trainings': instance.trainings,
    };
