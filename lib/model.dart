import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

enum WeatherType { sunny, rainy }

@JsonSerializable()
class WeatherData {
  final DateTime date;
  final double temperature;
  final WeatherType weatherType;

  WeatherData(this.date, this.temperature, this.weatherType);

  factory WeatherData.fromJson(String json) =>
      _$WeatherDataFromJson(jsonDecode(json));

  String toJson() => jsonEncode(_$WeatherDataToJson(this));
}
