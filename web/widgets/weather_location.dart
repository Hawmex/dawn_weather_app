import 'package:dawn/dawn.dart';

import '../weather_store.dart';

class WeatherLocation extends StatelessWidget {
  final Map<String, dynamic> weatherLocation;

  late final searchController =
      UserInputController(weatherLocation['name'] ?? '')
        ..onChange(weatherStore.updateWeatherCity);

  WeatherLocation(this.weatherLocation);

  @override
  Widget build(final Context context) {
    return Container(
      [
        Input(
          searchController,
          style: const Style({
            'font-size': '24px',
            'font-weight': '700',
            'width': '100%',
            'outline': 'none',
            'background': 'rgba(255, 255, 255, 0.16)',
            'padding': '8px',
            'border': 'none',
            'text-align': 'center',
            'font-family': 'Jost VF',
            'border-radius': '16px',
            'backdrop-filter': 'blur(16px)',
          }),
        ),
        Text(
          weatherLocation['country'] ?? '',
          style: const Style({'padding': '8px'}),
        ),
      ],
      style: const Style({
        'display': 'flex',
        'flex-flow': 'column',
        'gap': '8px',
      }),
    );
  }
}
