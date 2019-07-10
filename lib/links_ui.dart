import 'package:flutter/material.dart';

import 'dashboard_ui.dart';
import 'resources.dart';

class LinkScreen extends StatelessWidget {
  Widget _prepareIconElement(String imagePath, String title) {
    double imageHeight = 50;
    double imageWidth = 50;
    return IconElement(
      null,
      Image.asset(
        imagePath,
        width: imageWidth,
        height: imageHeight,
        fit: BoxFit.cover,
      ),
      Text(
        title,
        textAlign: TextAlign.center,
        softWrap: true,
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          color: Colors.green[800],
        ),
      ),
    );
  }

  List<Widget> _linkList() {
    return <Widget>[
      _prepareIconElement(
        ImagePaths.ticketBooking,
        Strings.ticketBooking,
      ),
      _prepareIconElement(
        ImagePaths.trainEnquiry,
        Strings.trainEnquiry,
      ),
      _prepareIconElement(
        ImagePaths.complaints,
        Strings.complaints,
      ),
      _prepareIconElement(
        ImagePaths.shramikKalyan,
        Strings.shramikKalyan,
      ),
      _prepareIconElement(
        ImagePaths.indianRailway,
        Strings.indianRailway,
      ),
      _prepareIconElement(
        ImagePaths.odcApproval,
        Strings.odcApproval,
      ),
      _prepareIconElement(
        ImagePaths.reservationEnquiries,
        Strings.reservationEnquiries,
      ),
      _prepareIconElement(
        ImagePaths.railSugam,
        Strings.railSugam,
      ),
      _prepareIconElement(
        ImagePaths.retireRoomBooking,
        Strings.retireRoomBooking,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      elevation: 4,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'External Links',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Divider(
            height: 16,
          ),
          GridView.count(
            crossAxisCount: 3,
            children: _linkList(),
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
