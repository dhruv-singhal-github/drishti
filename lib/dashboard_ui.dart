import 'package:flutter/material.dart';
import 'unit_ui.dart' as units;
import 'detail_page.dart';

class IconElement extends StatelessWidget {
  final Widget _topElement;
  final Widget _midElement;
  final Widget _bottomElement;

  IconElement(this._topElement, this._midElement, this._bottomElement);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTapDown: (_d){
          var page = Scaffold(
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
          );
          Navigator
              .of(context)
              .push(new MaterialPageRoute(builder: (BuildContext context) {
            return page;
          }),);
          },
        child: Center(
          child: Column(
            children: <Widget>[
              (_topElement == null) ? Container() : _topElement,
              _midElement,
              _bottomElement,
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
      height: 80,
      width: 120,
    );
  }
}

class IconElementGroup extends StatelessWidget {
  final List<Widget> _elements;
  final String _title;

  IconElementGroup(this._elements, this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Container(
              child: Text(
                _title,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
            ),
            Divider(height: 4,),
            SizedBox(
              height: 100,
              child: ListView(
                children: _elements,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: PageScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1.25),
    );
  }
}
