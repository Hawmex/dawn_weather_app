import 'dart:async';
import 'dart:math';

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
    weatherStore.updateWeatherCity('Tehran');
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
    final random = Random();

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
        const Text('Dawn Weather App (v1.0.0).')
      ],
      style: Style({
        'display': 'flex',
        'padding': '32px',
        'gap': '32px',
        'flex-flow': 'column',
        'justify-content': weather.isEmpty || weather['error'] != null
            ? 'start'
            : 'space-between',
        'font-family': 'Jost VF',
        'height': '100vh',
        'text-align': 'center',
        'overflow': 'hidden auto',
        'background':
            'linear-gradient(${random.nextInt(360)}deg, rgb(${127 + random.nextInt(128)}, ${127 + random.nextInt(128)}, ${127 + random.nextInt(128)}) 0%, rgb(${127 + random.nextInt(128)}, ${127 + random.nextInt(128)}, ${127 + random.nextInt(128)}) 100%)',
        'user-select': 'none',
      }),
    );
  }
}
