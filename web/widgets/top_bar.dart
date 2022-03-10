import 'dart:html';

import 'package:dawn/dawn.dart';

import 'icon_button.dart';

class TopBar extends StatelessWidget {
  final Widget? leading;
  final String title;
  final List<Widget>? trailing;

  const TopBar({this.leading, required this.title, this.trailing});

  @override
  Widget build(final Context context) {
    return Container(
      [
        Container(
          [
            leading ??
                IconButton('arrow_forward', onPress: window.history.back),
            Text(
              title,
              style: const Style({
                'font-variation-settings': '"wght" 600',
                'font-size': '20px',
              }),
            )
          ],
          style: const Style({
            'display': 'grid',
            'grid-template-columns': 'max-content 1fr',
            'align-items': 'center',
            'gap': '24px',
          }),
        ),
        Container(trailing ?? []),
      ],
      style: const Style({
        'padding': '8px',
        'display': 'grid',
        'grid-template-columns': 'max-content max-content',
        'gap': '16px',
        'background': '#ffffff',
        'border-bottom': '1px solid rgba(0, 0, 0, 0.16)',
        'justify-content': 'space-between',
        'align-items': 'center',
      }),
    );
  }
}
