//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
import 'dart:ui';

class MyRequest extends StatelessWidget {
  late final Map _foodData;
  late var _qtd;
  MyRequest(this._foodData, this._qtd);

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    String date =
        "${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString()}";
    String time =
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
    String dateLimit =
        "${_foodData["date"].day.toString().padLeft(2, '0')}/${_foodData["date"].month.toString().padLeft(2, '0')}/${_foodData["date"].year.toString()}";

    return Scaffold(
      appBar: AppBar(
          title: Text("My request"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
            },
          )),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Card(
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
                          "$_qtd kg",
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
                                _foodData["type"],
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
                                _foodData["food"],
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
                                _foodData["finality"],
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
                      "Rua Apiacás 124 como sera que fica com um texto muito grande",
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
                          "Suemy Inagaki",
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
                          "(21)965731140",
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
            ),
          ],
        ),
      ),
    );
  }
}
