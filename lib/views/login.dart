import 'package:c4c/models/user.dart';
import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
import 'package:c4c/provider/users.dart';
import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:c4c/views/home.dart';
import 'package:c4c/components/colors.dart';

class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPage createState() => _MyLoginPage();
}

class _MyLoginPage extends State<MyLoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late User _user;

  int encontraEmail(String mail, String pwd) {
    final Users users = Provider.of(context, listen: false);
    for (int i = 0; i < users.count; i++) {
      if (users.byIndex(i).email == mail && users.byIndex(i).password == pwd) {
        _user = users.byIndex(i);
        return i;
      }
    }
    return -1;
  }

  void _auth() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHome(_user),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 150,
                    backgroundImage: AssetImage("images/logo.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 10.0),
                  child: TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Email',
                    ),
                    controller: emailController,
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Email required";
                        } else if (!EmailValidator.validate(value)) {
                          return "Invalid email";
                        }
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 2.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                    ),
                    controller: passwordController,
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Password required";
                        }
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 50.0, bottom: 8.0, left: 20.0, right: 20.0),
                  child: Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(8.0),
                    color: MyColors.myRed,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        if (_formKey.currentState != null) {
                          if (_formKey.currentState!.validate()) {
                            String e = emailController.text;
                            String p = passwordController.text;
                            if (encontraEmail(e, p) != -1)
                              _auth();
                            else {
                              final snack = SnackBar(
                                content: Text("Invalid email or password"),
                                action: SnackBarAction(
                                    label: "",
                                    textColor: Colors.white,
                                    onPressed: () {}),
                                duration: Duration(seconds: 2),
                              );

                              ScaffoldMessenger.of(context)
                                  .removeCurrentSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(snack);
                            }
                          }
                        }
                      },
                      child: Text(
                        "Log in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      bottom: 20.0, left: 20.0, right: 20.0, top: 15),
                  child: Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(8.0),
                    color: MyColors.myRed,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          AppRoutes.REGISTER,
                        );
                      },
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
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
