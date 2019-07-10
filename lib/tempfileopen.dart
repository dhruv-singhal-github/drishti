import 'package:flutter/material.dart';

import 'links_ui.dart';
import 'maps_ui.dart';


void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(24, 68, 51, 1),
      title: Text('RailDrishti'),
    ),
//    body: MapLayout(),
    body: LinkScreen(),
//    body: MapLayout(),
  ),
  ),
);
