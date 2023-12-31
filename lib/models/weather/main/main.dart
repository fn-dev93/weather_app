import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class Main with _$Main {
  const factory Main({
    double? temp,
    double? feelsLike,
    double? temp_min,
    double? temp_max,
    int? pressure,
    int? humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}
