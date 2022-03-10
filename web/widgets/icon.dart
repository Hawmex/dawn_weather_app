import 'package:dawn/dawn.dart';

class Icon extends StatelessWidget {
  final String name;
  final EventListener? onPointerDown;
  final EventListener? onPointerUp;
  final EventListener? onPointerEnter;
  final EventListener? onPointerLeave;
  final EventListener? onPress;
  final Style? style;
  final Animation? animation;

  const Icon(
    this.name, {
    this.onPointerDown,
    this.onPointerUp,
    this.onPointerEnter,
    this.onPointerLeave,
    this.onPress,
    this.style,
    this.animation,
  });

  @override
  Widget build(final Context context) {
    return Text(
      name,
      onPointerDown: onPointerDown,
      onPointerUp: onPointerUp,
      onPointerEnter: onPointerEnter,
      onPointerLeave: onPointerLeave,
      onPress: onPress,
      style: Style({
        'font-family': 'Material Icons',
        'font-weight': 'normal',
        'font-style': 'normal',
        'font-size': '24px',
        'line-height': '1',
        'letter-spacing': 'normal',
        'text-transform': 'none',
        'display': 'inline-block',
        'white-space': 'nowrap',
        'word-wrap': 'normal',
        'direction': 'ltr',
        '-webkit-font-feature-settings': 'liga',
        '-webkit-font-smoothing': 'antialiased',
        ...?style?.rules
      }),
      animation: animation,
    );
  }
}
