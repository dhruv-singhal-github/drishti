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

class carousel extends StatelessWidget {
  var carousl = Container(
    height: 200,padding: EdgeInsets.fromLTRB(10,0, 10, 0),
    child: Carousel(
      images: [
        NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
        NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
        NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
        NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg')
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
