import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playsound(int soundno) {
    AudioCache xylophone = AudioCache();
    xylophone.play('audio$soundno.wav');
  }

  Expanded buidkeys(var color, int soundno) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundno);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buidkeys(Colors.red, 1),
              buidkeys(Colors.orange, 2),
              buidkeys(Colors.yellow, 3),
              buidkeys(Colors.green, 4),
              buidkeys(Colors.teal, 5),
              buidkeys(Colors.blue, 6),
              buidkeys(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
