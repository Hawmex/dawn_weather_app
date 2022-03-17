import 'package:dawn/dawn.dart';

class CurrentWeatherTemperature extends StatelessWidget {
  final double value;

  const CurrentWeatherTemperature(this.value);

  @override
  Widget build(final Context context) {
    return Container(
      [
        Text(
          '$value',
          style: const Style({'font-size': '48px', 'font-weight': '700'}),
        ),
        const Text('°C', style: Style({'font-weight': '700'})),
      ],
      style: const Style({'display': 'flex', 'align-items': 'start'}),
    );
  }
}
