import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:c4c/views/request.dart';

class FoodPage extends StatefulWidget {
  late final Map foodData;
  FoodPage(this.foodData);
  @override
  _FoodPage createState() => _FoodPage(foodData);
}

class _FoodPage extends State<FoodPage> {
  late final Map _foodData;
  _FoodPage(this._foodData);
  //int _qtd;
  @override
  int _qtd = 0;
  void initState() {
    super.initState();
    setState(() {
      _qtd = _foodData["quantity"];
    });
  }

  Widget build(BuildContext context) {
    var avatar;
    String date =
        "${_foodData["date"].day.toString().padLeft(2, '0')}/${_foodData["date"].month.toString().padLeft(2, '0')}/${_foodData["date"].year.toString()}";
    if (_foodData['picture'] == null) {
      avatar = ExactAssetImage("images/potato.jpeg");
    } else {
      avatar = ExactAssetImage('${_foodData["picture"]}');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Food detail"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            // height: 360,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.greenAccent, Colors.green],
              ),
            ),
            child: Container(
              // width: double.infinity,
              // height: 350.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Material(
                      elevation: 8.0,
                      child: Image(
                        image: avatar,
                        width: double.infinity,
                        //height: 340.0,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            elevation: 8.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 22.0),
              child: Column(
                children: [
                  Text(
                    date,
                    style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
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
                                  color: Colors.green[900],
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              _foodData["type"],
                              style: TextStyle(
                                  color: Colors.green[700],
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
                                  color: Colors.green[900],
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              _foodData["food"],
                              style: TextStyle(
                                  color: Colors.green[700],
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
                                  color: Colors.green[900],
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              _foodData["finality"],
                              style: TextStyle(
                                  color: Colors.green[700],
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            child: Text(
                              "$_qtd",
                              style: TextStyle(
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 57.0),
                            ),
                            padding: EdgeInsets.only(left: 150.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            "kg",
                            style: TextStyle(
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                        // Expanded(
                        //   child:
                        Padding(
                          padding: EdgeInsets.only(right: 100.0),
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_qtd < _foodData["quantity"]) _qtd++;
                                  });
                                },
                                //icon: Icon(Icons.expand_less),
                                //icon: Icon(Icons.exposure_plus_1),
                                icon: Icon(Icons.add),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_qtd > 1) _qtd--;
                                  });
                                },
                                //icon: Icon(Icons.expand_more),
                                // icon: Icon(Icons.exposure_neg_1),
                                icon: Icon(Icons.remove),
                              )
                            ],
                          ),
                        ),
                        //),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 30),
                    child: Material(
                      elevation: 8.0,
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.green,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        onPressed: () {
                          //var total = _foodData["quantity"];
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyRequest(_foodData, _qtd)));
                        },
                        child: Text(
                          "Request",
                          textAlign: TextAlign.center,
                          // style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
