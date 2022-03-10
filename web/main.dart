import 'package:dawn/dawn.dart';

import 'widgets/drawer.dart';
import 'widgets/drawer_button.dart';
import 'widgets/icon_button.dart';
import 'widgets/top_bar.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App();

  @override
  Widget build(final Context context) {
    return Container(
      [
        Drawer(
          [DrawerButton(icon: 'info', text: 'درباره ما', onPress: () {})],
          title: 'تیتر',
          subtitle: 'زیرتیتر',
        ),
        const TopBar(
          leading: IconButton('menu', onPress: activateDrawer),
          title: 'اپ تست',
          trailing: [IconButton('person')],
        ),
        const Container(
          [Text('سلام!')],
          style: Style({
            'display': 'flex',
            'align-items': 'center',
            'justify-content': 'center',
          }),
        ),
      ],
      style: const Style({
        'display': 'grid',
        'grid-template-rows': 'max-content 1fr',
        'height': '100vh',
        'background': '#f0f0f0',
        'position': 'relative',
        'font-family': 'Dana VF, Jost VF',
        'direction': 'rtl',
        'overflow': 'hidden',
        'user-select': 'none',
      }),
      animation: const Animation(
        keyframes: [
          {'borderRadius': '256px', 'transform': 'scale(0.64)'},
          {'borderRadius': '0%', 'transform': 'scale(1)'},
        ],
        options: {
          'duration': 300,
          'easing': 'cubic-bezier(0.4, 0.0, 0.2, 1)',
          'fill': 'forwards',
        },
      ),
    );
  }
}
