import 'package:flutter/material.dart';

class DiningHallSelection extends StatefulWidget {
  DiningHallSelection({Key? key}) : super(key: key);

  @override
  _DiningHallSelectionState createState() => _DiningHallSelectionState();
}

class _DiningHallSelectionState extends State<DiningHallSelection> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    ));
  }
}
