import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: MiCard()
      ),
    ),
  );
}


class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('image/mt.jpg'),
            ),
            Text(
              'Mateus de Freitas',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ZCOOL',
                  letterSpacing: 2.5
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 250.0,
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 15.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '(34) 9 9171-7143',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 17.0,
                      fontFamily: 'FredokaOne'
                  ),
                ) ,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              color: Colors.white,

              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  'mateusfreitasrosa@hotmail.com',
                  style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 17.0,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}