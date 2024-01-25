import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playsound(int soundnumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundnumber.wav'),
    );
  }

  void piano() {
    Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.white,
        ),
        onPressed: () {
          playsound(1);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              piano(),
              piano(),
              piano(),
              piano(),
              piano(),
              piano(),
              piano()
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
