import 'package:flutter/material.dart';

class UnitBox extends StatelessWidget{

  final String _unit;

  UnitBox(this._unit);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 50,
        height: 30,
        child: Card(
          color: Colors.lightBlue,
          elevation: 5,
          child: Center(
            child: Text(
              _unit,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
  }

}