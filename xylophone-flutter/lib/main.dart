import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  final player = AudioCache();


  List<Expanded> buildKeys(int n) {
    List<Expanded> widget = []  ;
    List<Color> color = [Colors.red, Colors.cyan, Colors.teal, Colors.deepOrange, Colors.amber,
      Colors.grey, Colors.greenAccent];

    for(int i=1; i<=n; i++) {
      widget.add(Expanded(
          child: FlatButton(
            onPressed: (){
              player.play('note$i.wav');
            },
            color: color[i-1],
          ),
        ),
      );
    }
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buildKeys(7),
          ),
        ),
      ),
    );
  }
}


