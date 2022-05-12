import 'package:dawn/dawn.dart';

class CurrentWeatherTemperature extends StatelessWidget {
  final double value;

  const CurrentWeatherTemperature(this.value, {final super.key});

  @override
  Widget build(final Context context) {
    return Container(
      [
        Text(
          '$value',
          style: const Style({
            'font-size': '40px',
            'font-variation-settings': '"wght" 700',
          }),
        ),
        const Text(
          '°C',
          style: Style({'font-variation-settings': '"wght" 700'}),
        ),
      ],
      style: const Style({'display': 'flex', 'align-items': 'start'}),
    );
  }
}
