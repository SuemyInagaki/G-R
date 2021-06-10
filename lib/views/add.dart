import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
//import 'package:http/http.dart' as http;
//import 'package:cpfcnpj/cpfcnpj.dart';
//import 'package:abcd/provider/users.dart';
//import 'package:provider/provider.dart';
//import 'package:abcd/colors.dart';
//import 'package:email_validator/email_validator.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class MyAddPage extends StatefulWidget {
  MyAddPage({Key? key, this.title = 'Register'}) : super(key: key);
  final String title;

  @override
  _MyAddPage createState() => _MyAddPage();
}

class _MyAddPage extends State<MyAddPage> {
  TextEditingController typeController = TextEditingController();
  TextEditingController qtdController = TextEditingController();
  TextEditingController foodController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late DateTime selectedDate = DateTime.now();

  @override
  initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                    ),
                    Container(
                      width: 300,
                      height: 200,
                      color: Colors.grey,
                      //padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                      //child: Image.asset("images/potato.jpeg", scale: 7),
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.local_see),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.collections),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 10.0),
                  child: TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Type',
                    ),
                    controller: typeController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Type required";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 10.0),
                  child: TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Food',
                    ),
                    controller: foodController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Food required";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 10.0),
                  //margin: const EdgeInsets.all(10.0),
                  child: InputDatePickerFormField(
                    fieldLabelText: "Expire date",
                    firstDate: DateTime(2019),
                    lastDate: DateTime(selectedDate.year, 12, 12),
                    initialDate: selectedDate,
                    onDateSubmitted: (date) {
                      setState(() {
                        selectedDate = date;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 10.0),
                  //margin: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Quantity (kg)',
                    ),
                    controller: qtdController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Quantity required";
                      } else if (int.parse(value) >= 100) {
                        return "Max 99";
                      } else if (int.parse(value) < 1) {
                        return "Min 1";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 30.0),
                  child: Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.green,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final snack = SnackBar(
                            content: Text("Food added successfully!"),
                            action: SnackBarAction(
                                label: "",
                                textColor: Colors.white,
                                onPressed: () {}),
                            duration: Duration(seconds: 2),
                          );

                          ScaffoldMessenger.of(context).removeCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(snack);
                        }
                      },
                      child: Text(
                        "Add",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
