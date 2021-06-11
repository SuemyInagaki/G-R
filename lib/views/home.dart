//import 'dart:html';

import 'package:c4c/components/colors.dart';
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
      // appBar: AppBar(
      //   title: Text("Home"),
      // ),
      drawer: _createDrawer(context),
      body: _createBody(),
    );
  }

  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  Widget _createBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: _pinned,
          snap: _snap,
          floating: _floating,
          expandedHeight: 160.0,
          flexibleSpace: const FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsets.only(
                right: 7,
                left: 8.0,
              ),
              child: Text(
                'Give And Receive',
                style: TextStyle(
                  fontSize: 25,
                  color: MyColors.myRed,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            background: Image(
              image: AssetImage("images/img2.png"),
              fit: BoxFit.cover,
              color: MyColors.myWhite,
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 280.0,
          delegate: SliverChildListDelegate(
            [
              Container(
                // padding: EdgeInsets.only(
                //   left: 20,
                //   top: 25,
                // ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('images/img1.png'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "Text muito grande como que fica quero um texto enorme blabalbla imagine uma materia aqui ou alguma informação ou algum texto introdutorio sobre o que é give and receive cmo sera que esta agora? ",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              //   child: Row(
              //     children: [
              //       // Text('oi'),
              //       ClipRRect(
              //         borderRadius: BorderRadius.circular(50),
              //         child: Image(
              //           image: AssetImage('images/img2.png'),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 25,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "This is a title",
                      style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(
                    //   height: 7,
                    // ),
                    Text(
                      "This is a subtitle",
                      style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
                child: Text(
                  "Text muito grande como que fica quero um texto enorme blabalbla imagine uma materia aqui ou alguma informação ou algum texto introdutorio sobre o que é give and receive cmo sera que esta agora? ",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Text(
                  "Text muito grande como que fica quero um texto enorme blabalbla imagine uma materia aqui ou alguma informação ou algum texto introdutorio sobre o que é give and receive cmo sera que esta agora? ",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _createDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: MyColors.myRed,
              // image: DecorationImage(
              //   image: ExactAssetImage('images/img3.png'),
              //   fit: BoxFit.cover,
              // ),
            ),
            //padding: EdgeInsets.only(top: 110.0, left: 10.0),
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
                      //fontWeight: FontWeight.bold,
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
          // ListTile(
          //   title: Text('Statistics'),
          //   onTap: () {
          //     // Navigator.pop(context);
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Statistics()));
          //   },
          //   leading: Icon(Icons.equalizer),
          // ),
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
