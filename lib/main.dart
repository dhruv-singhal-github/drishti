import 'package:flutter/material.dart';
import "HomePage.dart";

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 7),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(24, 68, 51, 1),
        body: Center(
            child: Column(children: [
          Container(
            child: Image.asset(
              'assets/images/RailDrishtilogo.png',
              height: 100,
              width: 350,
            ),
            height: 550,
          ),
          Container(
            child: Text(
              "RailDrishti",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            width: double.infinity,
            height: 60,
          ),
        ])));
  }
}
