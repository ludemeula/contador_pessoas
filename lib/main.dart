import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Contador de Pessoas',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contador de Pessoas'),
          backgroundColor: Colors.black87,
        ),
        body: Home(),
      ),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = 'Pode Entrar!';

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      _infoText = _people <= 0
          ? 'Mundo Invertido!'
          : (_people <= 10 ? 'Pode Entrar!' : 'Lotado!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return
    
      Stack(children: <Widget>[
      Image.asset(
        'images/restaurant.jpg',
        fit: BoxFit.cover,
        height: 1000.0,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Pessoas: $_people',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    _changePeople(1);
                  },
                  child: Text(
                    '+1',
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  )),
              FlatButton(
                  onPressed: () {
                    _changePeople(-1);
                  },
                  child: Text(
                    '-1',
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ))
            ],
          ),
          Text(
            _infoText,
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
                decoration: TextDecoration.none),
          )
        ],
      )
    ]);
  }
}
