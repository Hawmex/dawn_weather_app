import 'package:dawn/dawn.dart';

import 'icon.dart';

class DrawerButton extends StatefulWidget {
  final String icon;
  final String text;
  final void Function()? onPress;

  const DrawerButton({required this.icon, required this.text, this.onPress});

  @override
  State<StatefulWidget> createState() => DrawerButtonState();
}

class DrawerButtonState extends State<DrawerButton> {
  bool isHovered = false;

  @override
  Widget build(final Context context) {
    return Container(
      [Icon(widget.icon), Text(widget.text)],
      onPress: (final event) {
        if (widget.onPress != null) widget.onPress!();
      },
      onPointerEnter: (final event) => setState(() => isHovered = true),
      onPointerLeave: (final event) => setState(() => isHovered = false),
      style: Style({
        'display': 'grid',
        'grid-template-columns': 'max-content 1fr',
        'gap': '32px',
        'padding': '8px',
        'border-radius': '8px',
        'align-items': 'center',
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
