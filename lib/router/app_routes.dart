import 'package:flutter/material.dart';
import 'package:my_app/models/models.dart';
import 'package:my_app/screens/screens.dart';
import 'package:my_app/screens/slider_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listvew1',
        icon: Icons.library_books_sharp,
        name: 'List vew Tipo 1',
        screen: const Listvew1Screen()),
    MenuOption(
        route: 'listvew2',
        icon: Icons.library_books_sharp,
        name: 'List vew Tipo 2',
        screen: const Listvew2Screen()),
    MenuOption(
        route: 'Alert',
        icon: Icons.add_alarm,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outline,
        name: 'Animated Container',
        screen: const AnimtaedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Text Inputs',
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slow_motion_video_rounded,
        name: 'Slider and Checks',
        screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'lisview1': (BuildContext context) => const Listvew1Screen(),
  //   'lisview2': (BuildContext context) => const Listvew2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen()
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Listvew1Screen(),
    );
  }
}
