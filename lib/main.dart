import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int audioNum){
    final player = AudioCache();
    player.play('note$audioNum.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      playSound(1);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      color: Colors.teal[900],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      playSound(2);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      color: Colors.teal[700],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      playSound(3);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      color: Colors.teal[500],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: (){
                      playSound(4);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      color: Colors.teal[400],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: (){
                      playSound(5);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      color: Colors.teal[300],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: (){
                      playSound(6);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      color: Colors.teal[200],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: (){
                      playSound(7);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      color: Colors.teal[100],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
