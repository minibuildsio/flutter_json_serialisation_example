import 'package:flutter_json_serialisation_example/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('toJson returns a string representation of the weather data', () {
    final weatherDataString = WeatherData(DateTime(2024, 3, 1, 12, 0, 0), 15.6, WeatherType.sunny).toJson();

    expect(weatherDataString, '{"date":"2024-03-01T12:00:00.000","temperature":15.6,"weatherType":"sunny"}');
  });

  test('fromJson returns weather data', () {
    final weatherData =
        WeatherData.fromJson('{"date": "2024-02-29T12:00:00", "temperature": 12.4, "weatherType": "rainy"}');

    expect(weatherData.date, DateTime.parse('2024-02-29T12:00:00'));
    expect(weatherData.temperature, 12.4);
    expect(weatherData.weatherType, WeatherType.rainy);
  });
}
