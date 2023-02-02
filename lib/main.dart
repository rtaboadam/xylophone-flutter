import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int intNote) {
    final player = AudioPlayer();
    player.play(AssetSource('note$intNote.wav'));
  }

  @override
  Widget build(BuildContext context) {
    const rainbowColorArray = [
      Color.fromRGBO(148, 0, 211, 1.0),
      Color.fromRGBO(75, 0, 130, 1),
      Color.fromRGBO(0, 0, 255, 1),
      Color.fromRGBO(0, 255, 0, 1),
      Color.fromRGBO(255, 255, 0, 1),
      Color.fromRGBO(255, 127, 0, 1),
      Color.fromRGBO(255, 0, 0, 1),
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...rainbowColorArray.asMap().entries.map((entry) => Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: entry.value),
                        onPressed: () => playSound(entry.key + 1),
                        child: Text("")),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
