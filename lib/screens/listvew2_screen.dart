import 'package:flutter/material.dart';

class Listvew2Screen extends StatelessWidget {
  final options = const [
    'Valorant',
    'League of legens',
    'Among Us',
    'Fall Guys'
  ];

  const Listvew2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List view Tipo 2'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.abc_outlined),
                  title: Text(options[index]),
                  trailing:
                      const Icon(Icons.ac_unit_outlined, color: Colors.indigo),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
