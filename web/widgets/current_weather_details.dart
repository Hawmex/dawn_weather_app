import 'package:dawn/dawn.dart';

import 'current_weather_detail.dart';

class CurrentWeatherDetails extends StatelessWidget {
  final Map<String, dynamic> currentWeatherDetails;

  const CurrentWeatherDetails(this.currentWeatherDetails);

  @override
  Widget build(final Context context) {
    return Container(
      [
        CurrentWeatherDetail(
          key: 'Real Feel',
          value: currentWeatherDetails['feelslike_c'],
          unit: '°C',
        ),
        CurrentWeatherDetail(
          key: 'Humidity',
          value: currentWeatherDetails['humidity'],
          unit: '%',
        ),
        CurrentWeatherDetail(
          key: 'Wind Speed',
          value: currentWeatherDetails['wind_kph'],
          unit: 'km/h',
        ),
        CurrentWeatherDetail(
          key: 'Visibility',
          value: currentWeatherDetails['vis_km'],
          unit: 'km',
        ),
        CurrentWeatherDetail(
          key: 'Pressure',
          value: currentWeatherDetails['pressure_mb'],
          unit: 'millibar',
        ),
        CurrentWeatherDetail(
          key: 'UV Index',
          value: currentWeatherDetails['uv'],
        ),
      ],
      style: const Style({
        'display': 'grid',
        'grid-template-columns': '1fr 1fr',
        'gap': '16px',
        'padding': '16px',
        'background': 'rgba(255, 255, 255, 0.16)',
        'border-radius': '16px',
      }),
    );
  }
}
