// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => WeatherData(
      DateTime.parse(json['date'] as String),
      (json['temperature'] as num).toDouble(),
      $enumDecode(_$WeatherTypeEnumMap, json['weatherType']),
    );

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'temperature': instance.temperature,
      'weatherType': _$WeatherTypeEnumMap[instance.weatherType]!,
    };

const _$WeatherTypeEnumMap = {
  WeatherType.sunny: 'sunny',
  WeatherType.rainy: 'rainy',
};
