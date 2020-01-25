import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DiePage extends StatefulWidget {
  @override
  _DiePageState createState() => _DiePageState();
}

class _DiePageState extends State<DiePage> {
  int randomDie = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        setState(() {
          randomDie = Random().nextInt(6) + 1;
        });
      },
      child: Image.asset('images/dice$randomDie.png'),
    );

  }
}


class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: DiePage(),
          ),
          Expanded(
            child: DiePage(),
          ),
        ],
      ),
    );
  }
}
