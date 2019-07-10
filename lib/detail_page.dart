import 'package:flutter/material.dart';
import 'resources.dart';

class DetailsScreen extends StatelessWidget{
  final Widget _title;

  DetailsScreen(this._title);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView(

        children: <Widget>[
          _title,
          Divider(),
          Text('Zone-Wise',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold
          ),

          ),
        ],
      ),
    );
  }

}
