import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      iconSize: 24,
      items: [
        BottomNavigationBarItem(

          icon: SizedBox(
            child: ImageIcon(
              AssetImage('assets/image/menu.png'),
              color: Color.fromARGB(255, 116, 70, 172),
            ),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: SizedBox(
            child: ImageIcon(
              AssetImage('assets/image/chats.png'),
              color: Color.fromARGB(255, 242, 201, 76),
            ),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.heart,
            color: Color.fromARGB(255, 116, 70, 172),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: SizedBox(
            child: ImageIcon(
              AssetImage('assets/image/settings.png'),
              color: Color.fromARGB(255, 116, 70, 172),
            ),
          ),
          label: '',
        ),
      ],
    );
  }

  // void _onItemTapped(int index, WidgetRef ref, BuildContext context) {
  //   ref.read(navIndexProvider.notifier).state = index;
  //   final isAuth = ref.watch(authProvider.select(
  //         (state) => state.isAuthenticated,
  //   ));
  //   switch (index) {
  //     case 0:
  //       context.go('/events');
  //       break;
  //     case 1:
  //       context.go('/news');
  //       break;
  //     case 2:
  //       context.go('/lessons');
  //       break;
  //     case 3:
  //       isAuth ? context.go('/rating') : context.go('/settings');
  //       Logger().d(" rat $index");
  //       break;
  //     case 4:
  //       context.go('/settings');
  //       Logger().d(" set $index");
  //       break;
  //   }
  // }
}
