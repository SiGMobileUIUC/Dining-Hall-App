import 'package:flutter/material.dart';
import 'dininghalls.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color(0xff063970),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'UIUC Dining Hall Reviews',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Image(image: AssetImage('assets/i.png')),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(30),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TestPage()),
                  );
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black,
                      fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.all(30),
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DiningHallSelection()));
          },
          child: const Text(
            "Sign In",
            style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 30),
          ))
    ])));
  }
}
