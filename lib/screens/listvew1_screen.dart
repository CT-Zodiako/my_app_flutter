import 'package:flutter/material.dart';

class Listvew1Screen extends StatelessWidget {
  final options = const [
    'Valorant',
    'League of legens',
    'Among Us',
    'Fall Guys'
  ];

  const Listvew1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    leading: const Icon(Icons.abc_outlined),
                    title: Text(game),
                    trailing: const Icon(Icons.ac_unit_outlined),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
