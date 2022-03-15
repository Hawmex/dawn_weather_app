import 'package:dawn/dawn.dart';

import 'icon.dart';

class IconButton extends StatefulWidget {
  final String icon;
  final void Function()? onPress;

  const IconButton(this.icon, {this.onPress});

  @override
  State<StatefulWidget> createState() => IconButtonState();
}

class IconButtonState extends State<IconButton> {
  bool isHovered = false;

  @override
  Widget build(final Context context) {
    return Container(
      [
        Icon(widget.icon, style: const Style({'display': 'flex'}))
      ],
      onPress: (final event) {
        if (widget.onPress != null) widget.onPress!();
      },
      onPointerEnter: (final event) => setState(() => isHovered = true),
      onPointerLeave: (final event) => setState(() => isHovered = false),
      style: Style({
        'display': 'block',
        'width': 'max-content',
        'padding': '8px',
        'border-radius': '50%',
        'cursor': 'pointer',
        'background': 'rgba(0, 0, 0, ${isHovered ? '0.08' : '0'})',
        'transition':
            'all ${isHovered ? '200ms' : '150ms'} cubic-bezier(0.4, 0.0, 0.2, 1)',
        if (widget.onPress == null) ...{
          'pointer-events': 'none',
          'opacity': '0.64',
        },
      }),
    );
  }
}
