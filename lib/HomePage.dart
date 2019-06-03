import 'package:flutter/material.dart';
import 'dashboard_ui.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _createMainPage() {
    //TODO: Remove testing code
    //Test code starts here
    var iconWidget = Image.asset(
      'assets/images/user.jpg',
      width: 50,
      height: 50,
      fit: BoxFit.cover,
    );
    var topTextWidget = Text(
      "5,984 Cr",
      maxLines: 1,
    );
    var bottomTextWidget = Text(
      "Passengers",
      maxLines: 1,
    );

    var iconList = <Widget>[];
    for (int i = 0; i < 9; i++) {
      iconList
          .add(new IconElement(topTextWidget, iconWidget, bottomTextWidget));
    }
    var title = 'Reserved Class';
    //Test Code ends here
    return Align(
      child: Container(
        color: Colors
            .grey[180], //TODO: Move background color to material App properties
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            IconElementGroup(iconList, title),
            IconElementGroup(iconList, 'Unreserved Class'),
            IconElementGroup(iconList, 'Initiatives'),
            IconElementGroup(iconList, 'Freight'),
            IconElementGroup(iconList, 'Expenditure & Bills'),
            IconElementGroup(iconList, title),
          ],
          shrinkWrap: true,
        ),
        constraints: BoxConstraints(),
      ),
      alignment: Alignment.topCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 68, 51, 1),
        title: Text('RailDrishti'),
      ),
      body: _createMainPage(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.business,
              color: Colors.white,
            ),
            Icon(
              Icons.train,
              color: Colors.white,
            ),
            Icon(
              Icons.link,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
