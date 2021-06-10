//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
import 'dart:ui';
import 'package:c4c/views/requests.dart';

class MyHome extends StatelessWidget {
  //const MyHome({Key? key}) : super(key: key);
  //final List _data;

  //MyHome(this._data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              padding: EdgeInsets.only(top: 110.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text('User name here'),
                  ),
                  Spacer(),
                  Text("(21)965731140"),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 8.0),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Available foods'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(
                  AppRoutes.AVAILABLE,
                );
              },
              leading: Icon(Icons.store),
            ),
            ListTile(
              title: Text('Add food'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(
                  AppRoutes.ADD,
                );
              },
              leading: Icon(Icons.add_box),
            ),
            ListTile(
              title: Text('My requests'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyRequests()));
              },
              leading: Icon(Icons.receipt),
            ),
            // ListTile(
            //   title: Text('My food list'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            //   leading: Icon(Icons.storage),
            // ),
            ListTile(
              title: Text('Statistics'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.equalizer),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
