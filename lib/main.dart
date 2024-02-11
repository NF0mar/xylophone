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

  Expanded piano({required Color color, required int soundnumber}) {
    return Expanded(
      child: ElevatedButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          backgroundColor: color,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () {
          playsound(soundnumber);
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
              piano(color: Colors.black, soundnumber: 1),
              piano(color: Colors.white, soundnumber: 2),
              piano(color: Colors.black, soundnumber: 3),
              piano(color: Colors.white, soundnumber: 4),
              piano(color: Colors.black, soundnumber: 5),
              piano(color: Colors.white, soundnumber: 6),
              piano(color: Colors.black, soundnumber: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
