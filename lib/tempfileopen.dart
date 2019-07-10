import 'package:flutter/material.dart';
import 'unit_ui.dart' as units;
import 'detail_page.dart';
import 'links_ui.dart';
import 'maps_ui.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(24, 68, 51, 1),
            title: Text('RailDrishti'),
          ),
//    body: MapLayout(),
//    body: LinkScreen(),
          body: DetailsScreen(

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Freight',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                units.UnitBox('MT'),
              ],
            ),
          ),
        ),
      ),
    );
