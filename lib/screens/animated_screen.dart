import 'dart:math';

import 'package:flutter/material.dart';

class AnimtaedScreen extends StatefulWidget {
  const AnimtaedScreen({Key? key}) : super(key: key);

  @override
  State<AnimtaedScreen> createState() => _AnimtaedScreenState();
}

class _AnimtaedScreenState extends State<AnimtaedScreen> {
  double _width = 50;
  double _heingth = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShepe() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _heingth = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(255).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutCubic,
              width: _width,
              height: _heingth,
              decoration:
                  BoxDecoration(color: _color, borderRadius: _borderRadius))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.play_circle_outline,
            size: 35,
          ),
          onPressed: () {
            changeShepe();
          }),
    );
  }
}
