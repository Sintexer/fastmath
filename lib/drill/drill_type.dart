import 'package:freezed_annotation/freezed_annotation.dart';


@JsonEnum()
enum DrillType {
  @JsonValue("trick")
  trick,
  @JsonValue("fast)")
  fast,
  @JsonValue("challenge")
  challenge
}