import 'package:dawn/dawn.dart';

import 'current_weather_temperature.dart';

class CurrentWeatherTemperatureAndCondition extends StatelessWidget {
  final Map<String, dynamic> currentWeatherDetails;

  const CurrentWeatherTemperatureAndCondition(
    this.currentWeatherDetails, {
    final super.key,
  });

  @override
  Widget build(final Context context) {
    return Container(
      [
        CurrentWeatherTemperature(currentWeatherDetails['temp_c']),
        Text(
          currentWeatherDetails['condition']['text'],
          style: const Style({
            'font-size': '32px',
            'font-variation-settings': '"wght" 600',
          }),
        ),
      ],
      style: const Style({
        'display': 'flex',
        'flex-flow': 'column',
        'gap': '8px',
        'padding': '8px',
        'align-items': 'center',
      }),
    );
  }
}
