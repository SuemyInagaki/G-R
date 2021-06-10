import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
//import 'package:http/http.dart' as http;
//import 'package:cpfcnpj/cpfcnpj.dart';
//import 'package:abcd/provider/users.dart';
import 'package:provider/provider.dart';
//import 'package:abcd/colors.dart';
//import 'package:email_validator/email_validator.dart';

class MyRegister extends StatefulWidget {
  MyRegister({Key? key, this.title = 'Register'}) : super(key: key);
  final String title;

  @override
  _MyRegister createState() => _MyRegister();
}

class _MyRegister extends State<MyRegister> {
  TextEditingController telController = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _register() async {
    // String mail = mailController.text;
    // String pwd = passwordController1.text;
    // //final Users users = Provider.of(context, listen: false);
    // int i;
    // for (i = 0; i < users.count; i++) {
    //   if (users.byIndex(i).email == mail) {
    //     break;
    //   }
    // }

    Navigator.of(context).pushNamed(
      AppRoutes.HOME,
    );
  }

  // bool encontraCPF(String cpf) {
  //   final Users users = Provider.of(context, listen: false);
  //   int flag = -1;
  //   for (int i = 0; i < users.count; i++) {
  //     if (users.byIndex(i).cpf == cpf) {
  //       flag = i;
  //       break;
  //     }
  //   }
  //   if (flag != -1) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  var _senha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  //padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                  child: Image.asset("images/logo.jpeg", scale: 1),
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
                      labelText: 'Name',
                      //fillColor: Colors.grey[350],
                      //filled: true,
                    ),
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name required";
                      } else if (value.trim().length < 5) {
                        return "Min. 5 characters";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 10.0),
                  child: TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Phone',
                      //fillColor: Colors.grey[350],
                      //filled: true,
                    ),
                    controller: telController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone required";
                      }
                      // else if (!EmailValidator.validate(value)) {
                      //   return "Email inválido";
                      // }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 10.0),
                  //margin: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                      //fillColor: Colors.grey[350],
                      //filled: true,
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
                  padding: EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 10.0),
                  //margin: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Confirm password',
                      //fillColor: Colors.grey[350],
                      //filled: true,
                    ),
                    controller: passwordController2,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password required";
                      } else if (_senha != value) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 1.0, 25.0, 10.0),
                  //margin: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Address',
                      //fillColor: Colors.grey[350],
                      //filled: true,
                    ),
                    controller: addressController,
                    validator: (value) {
                      if (value != null) _senha = value;
                      if (value!.isEmpty) {
                        return "Address required";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(8.0),
                    //color: Color(0xff01A0C7),
                    color: Colors.green,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final snack = SnackBar(
                            content: Text("Registration success!"),
                            action: SnackBarAction(
                                label: "",
                                textColor: Colors.white,
                                onPressed: () {
                                  // Navigator.of(context).pushNamed(
                                  //   AppRoutes.HOME,
                                  //);
                                }),
                            duration: Duration(seconds: 2),
                          );

                          ScaffoldMessenger.of(context).removeCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(snack);
                          _register();
                        }
                      },
                      child: Text(
                        "Register",
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
