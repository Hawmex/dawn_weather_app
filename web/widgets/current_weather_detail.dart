import 'package:dawn/dawn.dart';

class CurrentWeatherDetail extends StatelessWidget {
  final String key;
  final dynamic value;
  final String unit;

  const CurrentWeatherDetail({
    required this.key,
    required this.value,
    final String? unit,
  }) : unit = unit ?? '';

  @override
  Widget build(final Context context) {
    return Container(
      [
        Text(key),
        Text(
          '$value$unit',
          style: const Style({
            'font-size': '20px',
            'font-variation-settings': '"wght" 450',
          }),
        ),
      ],
      style: const Style({
        'display': 'flex',
        'flex-flow': 'column',
        'gap': '8px',
        'padding': '8px',
      }),
    );
  }
}
