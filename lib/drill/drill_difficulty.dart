import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum DrillDifficulty {
  @JsonValue('addition')
  easy,
  @JsonValue("medium")
  medium,
  @JsonValue("hard")
  hard
}