import 'dart:html';

import 'package:dawn/dawn.dart';

import 'scrim.dart';

final _drawerState = DrawerState();

void activateDrawer() => _drawerState.activate();

class Drawer extends StatefulWidget {
  final String title;
  final String subtitle;
  final List<Widget> children;

  const Drawer(this.children, {required this.title, required this.subtitle});

  @override
  State<StatefulWidget> createState() => _drawerState;
}

class DrawerState extends State<Drawer> {
  bool isActive = false;

  void activate() => setState(() => isActive = true);
  void deactivate() => setState(() => isActive = false);

  @override
  Widget build(final Context context) {
    return Container(
      [
        Scrim(isActive, onPress: (final event) => deactivate()),
        Container(
          [
            Container(
              [
                Text(
                  widget.title,
                  style: const Style({
                    'font-variation-settings': '"wght" 600',
                    'font-size': '20px',
                  }),
                ),
                Text(widget.subtitle),
              ],
              style: const Style({
                'display': 'flex',
                'flex-flow': 'column',
                'padding': '8px 16px',
              }),
            ),
            Container(
              widget.children,
              style: const Style({
                'display': 'flex',
                'flex-flow': 'column',
                'padding': '8px',
                'gap': '8px',
              }),
            ),
          ],
          style: Style({
            'display': 'grid',
            'grid-template-rows': 'max-content 1fr',
            'height': '100%',
            'width': window.innerWidth! > 640 ? '256px' : 'calc(100% - 56px)',
            'position': 'absolute',
            'background': '#ffffff',
            'top': '0px',
            'right': '0px',
            'transform': 'translateX(${isActive ? '0%' : '100%'})',
            'transition':
                'all ${isActive ? '250ms' : '200ms'} cubic-bezier(0.4, 0.0, 0.2, 1)',
          }),
        )
      ],
      style: const Style({'display': 'contents'}),
    );
  }
}
