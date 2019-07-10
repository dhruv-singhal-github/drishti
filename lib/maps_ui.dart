import 'package:flutter/material.dart';
import 'resources.dart';



class MapLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle heading = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      fontFamily: 'Roboto',
    );
    TextStyle legend = TextStyle(
      fontSize: 15,
      fontFamily: 'Roboto',
    );
    return Card(
      elevation: 8,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                Strings.searchTrain,
                style: heading,
              ),
              SearchBox(),
            ],
          ),
          Row(
            children: <Widget>[
              Text(Strings.rajdhani, style: legend,),
              Icon(Icons.train, color: Colors.green[600],),
              Text(Strings.shatabdi, style: legend,),
              Icon(Icons.train, color: Colors.blue[700],),
              Text(Strings.searchedTrain, style: legend,),
              Icon(Icons.train, color: Colors.red[800],),
            ],
          ),
          Container(
            color: Colors.green,
            height: 500,
            width: 400,
            child: Center(
              child: DummyData.notImplementedText,
            ),
          )
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () => showSearch(context: context, delegate: SearchList()),
    );
  }
}

class SearchList extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.length < 3
        ? [Strings.threeLetterErromMessage]
        : DummyData.stationList;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            leading: suggestionList[0] != Strings.threeLetterErromMessage
                ? Icon(Icons.location_city)
                : null,
            title: Text(suggestionList[index]),
          ),
      itemCount: suggestionList.length,
    );
  }
}
