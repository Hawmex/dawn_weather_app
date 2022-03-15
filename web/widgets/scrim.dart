import 'package:dawn/dawn.dart';

class Scrim extends StatelessWidget {
  final bool isActive;
  final EventListener? onPress;

  const Scrim(this.isActive, {this.onPress});

  @override
  Widget build(final Context context) {
    return Container(
      [],
      onPress: onPress,
      style: Style({
        'position': 'absolute',
        'top': '0px',
        'left': '0px',
        'width': '100%',
        'height': '100%',
        'background': '#000000',
        'opacity': isActive ? '0.16' : '0',
        'visibility': isActive ? 'visible' : 'hidden',
        'transition':
            'all ${isActive ? '250ms' : '200ms'} cubic-bezier(0.4, 0.0, 0.2, 1)'
      }),
    );
  }
}
