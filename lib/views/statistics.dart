import 'package:c4c/components/colors.dart';
import 'package:flutter/material.dart';

class MyStatistics extends StatefulWidget {
  @override
  _MyStatistics createState() => _MyStatistics();
}

class _MyStatistics extends State<MyStatistics> {
  int _waste = 0;
  int _economy = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myRed,
        iconTheme: IconThemeData(color: MyColors.myWhite),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "My progress",
              style: TextStyle(
                color: MyColors.myRed,
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Card(
                  //margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                  clipBehavior: Clip.antiAlias,
                  color: MyColors.myWhite,
                  elevation: 8.0,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          'Waste',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Food: $_waste kg'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('CO2: $_economy kg'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
              ),
              Container(
                width: 200,
                child: Card(
                  //margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                  clipBehavior: Clip.antiAlias,
                  color: MyColors.myWhite,
                  elevation: 8.0,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          'Economy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Food: $_waste kg'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('CO2: $_economy kg'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
