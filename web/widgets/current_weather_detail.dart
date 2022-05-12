import 'package:dawn/dawn.dart';

class CurrentWeatherDetail extends StatelessWidget {
  final String name;
  final dynamic value;
  final String unit;

  const CurrentWeatherDetail({
    required this.name,
    required this.value,
    final String? unit,
    final super.key,
  }) : unit = unit ?? '';

  @override
  Widget build(final Context context) {
    return Container(
      [
        Text(name),
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
