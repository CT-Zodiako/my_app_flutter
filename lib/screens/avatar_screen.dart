import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Screen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              child: const Text('YO'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/e/e6/Faker_at_the_2015.10.02_S5_Paris_day2.jpeg'),
      )),
    );
  }
}
