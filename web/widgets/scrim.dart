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
      style: const Style({
        'position': 'absolute',
        'top': '0px',
        'left': '0px',
        'width': '100%',
        'height': '100%',
        'background': '#000000',
      }),
      animation: Animation(
        keyframes: [
          {'opacity': '0', 'visibility': 'hidden'},
          {'opacity': '0.16', 'visibility': 'visible'}
        ],
        options: {
          'duration': isActive ? 250 : 200,
          'easing': 'cubic-bezier(0.4, 0.0, 0.2, 1)',
          'fill': 'forwards',
          'direction': isActive ? 'normal' : 'reverse',
        },
      ),
    );
  }
}
