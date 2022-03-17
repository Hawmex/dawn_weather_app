import 'dart:convert';

import 'package:dawn/dawn.dart';
import 'package:http/http.dart';

final weatherStore = WeatherStore();

class WeatherStore extends Store {
  Map<String, dynamic> weather = {};

  void updateWeatherCity(final String newCity) async {
    setState(() => weather = {});

    final response = await get(
      Uri.parse(
        'https://api.weatherapi.com/v1'
        '/current.json'
        '?key=1adf4aa78cf54823bb992817221703'
        '&q=$newCity'
        '&aqi=no',
      ),
    );

    setState(() => weather = jsonDecode(response.body));
  }
}
