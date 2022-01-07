import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = AudioCache();
    player.play("note$number.wav");

  }
  Expanded buildButton(Color color, int number){
    return Expanded(
      child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: color,
                ),
                onPressed: (){
                  playSound(number);
                },
                child: Text('')
              ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(Colors.red, 1),
              buildButton(Colors.orange, 2),
              buildButton(Colors.yellow, 3),
              buildButton(Colors.green, 4),
              buildButton(Colors.green.shade800, 5),
              buildButton(Colors.blue, 6),
              buildButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
