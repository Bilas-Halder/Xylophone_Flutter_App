import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int audioNum){
    final player = AudioCache();
    player.play('note$audioNum.wav');
  }

  Expanded buildKey(int audioNum, int colorNum){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(audioNum);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          color: Colors.teal[colorNum],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Xylophone')),
          backgroundColor: Colors.teal[400],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildKey(1,900),
                buildKey(2,700),
                buildKey(3,500),
                buildKey(4,400),
                buildKey(5,300),
                buildKey(6,200),
                buildKey(7,100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
