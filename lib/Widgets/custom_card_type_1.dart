import 'package:flutter/material.dart';
import 'package:my_app/theme/app_theme.dart';

class CustomCarType1 extends StatelessWidget {
  const CustomCarType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.access_alarm_rounded,
              color: AppTheme.primary,
            ),
            title: Text('Esto es un titulo'),
            subtitle: Text(
                'Sit non pariatur esse labore consectetur labore irure reprehenderit cupidatat.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(onPressed: () {}, child: const Text('OK'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
