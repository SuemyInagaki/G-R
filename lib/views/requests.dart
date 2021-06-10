//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
import 'dart:ui';

class MyRequests extends StatelessWidget {
  // late final Map _foodData;
  // late var _qtd;
  //MyRequests(this._foodData, this._qtd);
  // Future<Null> _refresh() async {
  //   await Future.delayed(Duration(seconds: 1));
  //   setState(() {
  //     _foodList.sort((a, b) {
  //       if (a["date"].isAfter(b["date"]))
  //         return 1;
  //       else if (b["date"].isAfter(a["date"]))
  //         return -1;
  //       else
  //         return 0;
  //     });
  //     _saveData();
  //   });

  //   return null;
  // }
  final List _myRequests = [
    {
      "date": DateTime.now(),
      "deadline": DateTime(2021, 9, 12),
      "type": "Fruit",
      "food": "Banana",
      "quantity": 2,
      "distance": "20 km",
      "finality": "Human",
      "adress": "Rua jaragua 20",
      "name": "Zé bonitinho",
      "contact": "123456789",
    },
    {
      "date": DateTime(2021, 9, 6),
      "deadline": DateTime(2021, 9, 12),
      "type": "Fruit",
      "food": "Mango",
      "quantity": 3,
      "distance": "10 km",
      "finality": "Animal",
      "adress": "Rua mantiqueira 10",
      "name": "Tiririca",
      "contact": "987654321",
    },
    {
      "date": DateTime.now(),
      "deadline": DateTime(2021, 6, 20),
      "type": "Vegetable",
      "food": "Potato",
      "quantity": 1,
      "distance": "2 km",
      "finality": "Fertilizer",
      "adress": "Rua monteiro lobato 34",
      "name": "Charlie Brown",
      "contact": "123459876",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("My requests"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 10.0),
          itemCount: _myRequests.length,
          itemBuilder: buildItem,
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, int index) {
    var now = _myRequests[index]["date"];
    String date =
        "${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString()}";
    String time =
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
    String dateLimit =
        "${_myRequests[index]["deadline"].day.toString().padLeft(2, '0')}/${_myRequests[index]["deadline"].month.toString().padLeft(2, '0')}/${_myRequests[index]["deadline"].year.toString()}";

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      elevation: 8.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Request Detail",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Date: ",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  date,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  "Time: ",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  time,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  "Quantity: ",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${_myRequests[index]["quantity"]} kg",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Type",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        _myRequests[index]["type"],
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Food",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        _myRequests[index]["food"],
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Finality",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        _myRequests[index]["finality"],
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Withdrawal deadline: ",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "$dateLimit",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Pickup adress:",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              _myRequests[index]["adress"],
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Donor name: ",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  _myRequests[index]["name"],
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Donor contact: ",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  _myRequests[index]["contact"],
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Thank you, you are helping to reduce waste and encourage conscientious consumption!",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
