import 'dart:async';

import 'package:dawn/dawn.dart';

import 'weather_store.dart';
import 'widgets/current_weather_details.dart';
import 'widgets/current_weather_temperature_and_location.dart';
import 'widgets/weather_location.dart';

void main() => runApp(const WeatherApp());

class WeatherApp extends StatefulWidget {
  const WeatherApp();

  @override
  State<StatefulWidget> createState() => WeatherAppState();
}

class WeatherAppState extends State<WeatherApp> {
  late StreamSubscription<void> weatherSubscription;

  @override
  void initialize() {
    super.initialize();
    weatherStore.updateWeatherCity('New York City');
    weatherSubscription = weatherStore.onUpdate(() => setState(() {}));
  }

  @override
  void dispose() {
    weatherSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(final Context context) {
    final weather = weatherStore.weather;

    return Container(
      [
        WeatherLocation(weather['location'] ?? {}),
        if (weather.isEmpty)
          const Text('Please Wait...')
        else if (weather['error'] != null)
          const Text('City Not Found :(')
        else ...[
          CurrentWeatherTemperatureAndCondition(weather['current']),
          CurrentWeatherDetails(weather['current']),
        ],
      ],
      style: const Style({
        'display': 'flex',
        'padding': '32px',
        'gap': '32px',
        'align-items': 'center',
        'flex-flow': 'column',
        'font-family': 'Jost VF',
        'height': '100vh',
        'overflow': 'hidden auto',
        'background': '#5ec0e1',
      }),
    );
  }
}
