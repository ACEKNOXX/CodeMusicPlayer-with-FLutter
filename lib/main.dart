// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int notePlay) {
    final player = AudioCache();
    player.play('note$notePlay.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
     return Expanded(
      child: FlatButton(
        color: color,
        textColor: Colors.white,
        onPressed: (){
          playSound(soundNumber);
        },
        child: Text("Click me "),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white12,
        body: SafeArea(
          child:Padding(
            padding:EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children:<Widget>[
               
                buildKey( color:Colors.red , soundNumber:1),
                buildKey( color:Colors.teal , soundNumber:2),
                buildKey( color:Colors.purple , soundNumber:3),
                buildKey( color:Colors.green , soundNumber:4),
                buildKey( color:Colors.pink, soundNumber:5),
                buildKey( color:Colors.orange , soundNumber:6),
                buildKey( color:Colors.blueGrey , soundNumber:7),

              ]
            ),
          ),
        ),
      ),
    );
  }
}
