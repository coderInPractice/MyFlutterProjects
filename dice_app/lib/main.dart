import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyDiceeApp());
}

class MyDiceeApp extends StatefulWidget {
  const MyDiceeApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyDiceeState();
}

class _MyDiceeState extends State<MyDiceeApp> {
  int _currentDiceFace = 1; // Initial dice face

  @override
  void initState() {
    super.initState();
  }

  void rollDice() {
    setState(() {
      _currentDiceFace = Random().nextInt(6) + 1; // Generate random face
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dicee App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: Random().nextDouble() * 180,
                child: Image.asset(
                  'assets/dice_img/dice$_currentDiceFace.png',
                  height: 100,
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30)),
                  onPressed: rollDice,
                  child: const Text('Roll Dice'))
            ],
          ),
        ),
      ),
    );
  }

}
