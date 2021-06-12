//import 'dart:html';

import 'package:c4c/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
import 'dart:ui';
import 'package:c4c/views/requests.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHome extends StatefulWidget {
  //const MyHome({Key? key}) : super(key: key);
  //final List _data;

  @override
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<MyHome> {
  @override
  void initState() {
    super.initState();
  }

  late CarouselSlider instance;
  @override
  Widget build(BuildContext context) {
    instance = new CarouselSlider(
      items: [
        Image(
          image: AssetImage('images/img1.png'),
          width: 550,
          height: 310,
          fit: BoxFit.cover,
        ),
        Image(
          image: AssetImage('images/img2.png'),
          width: 550,
          height: 310,
          fit: BoxFit.cover,
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 4000),
        enableInfiniteScroll: true,
        autoPlayCurve: Curves.ease,
        viewportFraction: 1,
      ),
    );

    return Scaffold(
      drawer: _createDrawer(context),
      //body: _createBody(),
      body: _createBody(),
      appBar: AppBar(
          backgroundColor: MyColors.myWhite,
          toolbarHeight: 70,
          title: Text(
            'Give and Receive',
            //textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 34,
              color: MyColors.myRed,
              fontWeight: FontWeight.w900,
              //fontFamily: ,
            ),
          ),
          iconTheme: IconThemeData(color: MyColors.myRed)),
    );
  }

  Widget _createBody() {
    return //SingleChildScrollView(
        //child:
        Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(0)),
        instance,
        Expanded(
          child: Container(
            padding: EdgeInsets.all(0),
            child: Text("Oi teste2"),
            color: MyColors.myWhite,
            width: 500,
            //height: 182,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  child: Text("Oi teste\n\n\n\n\n\n\n"),
                  // color: MyColors.myWhite,
                  //height: 182,
                ),
                Center(
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(40),
                    color: MyColors.myRed,
                    child: MaterialButton(
                      // minWidth: MediaQuery.of(context).size.width,
                      minWidth: 100,
                      //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: Container(
                child: Material(
                  elevation: 8.0,
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                    image: ExactAssetImage('images/img1.png'),
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(0),
            child: Text("Oi teste"),
            color: MyColors.myWhite,
            width: 500,
            //height: 182,
          ),
        ),
      ],
      //),
    );
  }

  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  Widget _createDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: MyColors.myRed,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    backgroundColor: MyColors.myWhite,
                    radius: 50,
                    backgroundImage: AssetImage("images/logo.png"),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "G&R",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight + Alignment(0, .6),
                  child: Text(
                    "Give & Receive",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,
                    ),
                  ),
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
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
