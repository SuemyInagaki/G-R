import 'dart:convert';
import 'dart:io';

import 'package:c4c/components/colors.dart';
import 'package:c4c/models/address.dart';
import 'package:c4c/models/user.dart';
import 'package:c4c/provider/users.dart';
import 'package:c4c/views/home.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class MyRegister extends StatefulWidget {
  //MyRegister({Key? key, this.title = 'Register'}) : super(key: key);
  //final String title;
  @override
  _MyRegister createState() => _MyRegister();
}

class _MyRegister extends State<MyRegister> {
  final TextEditingController telController = TextEditingController();
  final TextEditingController passwordController1 = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  //Map<String, dynamic> _formData = {};

  List _formList = [];
  Map _formData = {};

  var _senha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: MyColors.myWhite,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(190),
                        bottomRight: Radius.circular(190)),
                  ),
                  width: 500,
                  height: 200,
                  child: CircleAvatar(
                    backgroundColor: MyColors.myWhite,
                    radius: 10,
                    backgroundImage: AssetImage("images/logo.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'Name',
                    ),
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name required";
                      } else if (value.trim().length < 5) {
                        return "Min. 5 characters";
                      }

                      _formData['name'] = value;

                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'Phone',
                    ),
                    controller: telController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone required";
                      }
                      _formData['phone'] = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    onSaved: (value) => _formData['email'] = value,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'Mail',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email required";
                      } else if (!EmailValidator.validate(value)) {
                        return "Email inválido";
                      }
                      _formData['mail'] = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'Password',
                    ),
                    controller: passwordController1,
                    validator: (value) {
                      if (value != null) _senha = value;
                      if (value!.isEmpty) {
                        return "Password required";
                      }

                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'Confirm password',
                    ),
                    controller: passwordController2,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password required";
                      } else if (_senha != value) {
                        return "Passwords do not match";
                      }
                      _formData['password'] = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    onSaved: (value) => _formData['address']['country'] = value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'Country',
                    ),
                    controller: addressController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Country required";
                      }
                      _formData['country'] = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    onSaved: (value) => _formData['address']['state'] = value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'State',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "State required";
                      }
                      _formData['state'] = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'City',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "City required";
                      }
                      _formData['city'] = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'Address',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Address required";
                      }
                      _formData['address'] = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      labelText: 'Postal Code',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Postal code required";
                      }

                      _formData['postal'] = value;
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(8.0),
                    color: MyColors.myRed,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        bool isValid = _formKey.currentState!.validate();
                        if (isValid) {
                          User user = User(
                            id: '',
                            name: _formData['name'],
                            phone: _formData['phone'],
                            email: _formData['email'],
                            address: Address(
                              name: 'my home',
                              country: _formData['country'],
                              city: _formData['city'],
                              state: _formData['state'],
                              address: _formData['address'],
                              postal: _formData['postal'],
                            ),
                            password: _formData['password'],
                          );

                          final Users users =
                              Provider.of(context, listen: false);
                          users.put(user);
                          final snack = SnackBar(
                            content: Text("Registration success!"),
                            action: SnackBarAction(
                                label: "",
                                textColor: Colors.white,
                                onPressed: () {}),
                            duration: Duration(seconds: 2),
                          );

                          ScaffoldMessenger.of(context).removeCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(snack);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHome(user),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Already an user?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: MyColors.myRed,
                      fontWeight: FontWeight.bold,
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
