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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
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
            TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                playsound(2);
              },
              child: const Text(''),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                playsound(3);
              },
              child: const Text(''),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                playsound(4);
              },
              child: const Text(''),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                playsound(5);
              },
              child: const Text(''),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                playsound(6);
              },
              child: const Text(''),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                playsound(7);
              },
              child: const Text(''),
            ),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
