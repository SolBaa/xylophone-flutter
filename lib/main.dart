import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Expanded createButton(Color color, int soundNumber){
      return Expanded(
      child: TextButton(
      style: TextButton.styleFrom(
      backgroundColor: color,),
      onPressed: () async {
      final player = AudioPlayer();
      player.play(AssetSource('note$soundNumber.wav'));
      },
      child: Text(''),
      ),);
}
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            createButton(Colors.red, 1),
            createButton(Colors.orange, 2),
            createButton(Colors.yellow, 3),
            createButton(Colors.green, 4),
            createButton(Colors.teal, 5),
            createButton(Colors.blue, 6),
            createButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}