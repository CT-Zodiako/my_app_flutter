import 'package:flutter/material.dart';
import 'package:my_app/models/menu_option.dart';
import 'package:my_app/router/app_routes.dart';
import 'package:my_app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(AppRoutes.menuOptions[index].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const Listvew1Screen(),
                    // );

                    // Navigator.pushReplacement(context, route);
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
