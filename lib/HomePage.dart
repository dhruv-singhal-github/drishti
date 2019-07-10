import 'package:flutter/material.dart';
import 'dashboard_ui.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
    return
              Container(
                  decoration: BoxDecoration(  image: new DecorationImage(
        image: new AssetImage("assets/images/bgcurve.png"),
    fit: BoxFit.cover,
    ),),
                  
                  //TODO: Move background color to material App properties
                child:

                  ListView(
                   children: <Widget>[carousel(),
                   IconElementGroup(iconList, title),
                    IconElementGroup(iconList, 'Unreserved Class'),
                    IconElementGroup(iconList, 'Initiatives'),
                     IconElementGroup(iconList, 'Freight'),
                    IconElementGroup(iconList, 'Expenditure & Bills'),
                    IconElementGroup(iconList, title),
                ],
                shrinkWrap: true,)
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
        shape: CircularNotchedRectangle(),
        notchMargin:4.0,
        color: Colors.teal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu),onPressed: (){},),
            IconButton(icon:Icon(Icons.search),onPressed: () {},),
            IconButton(icon:Icon(Icons.search),onPressed: () {},),
            IconButton(icon:Icon(Icons.search),onPressed: () {},)
          ],
        ),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child:const Icon(Icons.home),onPressed: (){}),
    );

  }
}

class carousel extends StatelessWidget {
  var carousl = Container(
    height: 200,//padding: EdgeInsets.fromLTRB(10,0, 10, 0),
    child: Carousel(
      images: [

            NetworkImage(
                'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_01.jpg'),

  NetworkImage(
  'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_02.jpg'),

        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_03.jpg',),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_04.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_05.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_06.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_07.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_08.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_09.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_10.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_11.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_12.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_13.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_14.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_15.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_16.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_17.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_18.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_19.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_20.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_21.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_22.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_23.jpg'),
        NetworkImage(
            'https://www.raildrishti.in/raildrishti/img/achievements/ir/ir_24.jpg'),
    
      ],
      showIndicator: false,
      borderRadius: false,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
      overlayShadow: true,
      overlayShadowColors: Colors.white,
      overlayShadowSize: 0.7,

    ),
  );
  @override
  Widget build(BuildContext context) {
    return carousl;
  }
}
