import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
//import 'package:http/http.dart' as http;
//import 'package:cpfcnpj/cpfcnpj.dart';
//import 'package:c4c/provider/users.dart';
//import 'package:provider/provider.dart';
//import 'package:c4c/colors.dart';

class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPage createState() => _MyLoginPage();
}

class _MyLoginPage extends State<MyLoginPage> {
  TextEditingController telController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _auth() async {
    String tel = telController.text;
    String pwd = passwordController.text;
    /*
    Aqui buscaria os dados no banco de dados
    e faria a autenticação. Depois passaria
    Os dados do usuário para a próxima página.
    Passei só o tel em uma lista pq é o que tenho
    */
    Navigator.of(context).pushNamed(
      AppRoutes.HOME,
      //arguments: [tel],
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Telefone',
                    ),
                    controller: telController,
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Telefone obrigatório";
                        }
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 2.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Senha',
                    ),
                    controller: passwordController,
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Senha obrigatória";
                        }
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8),
                  width: 200,
                  height: 48,
                  child: Material(
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {},
                      child: Text(
                        "Esqueci minha senha",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 8.0, left: 20.0, right: 20.0),
                  child: Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.green,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        if (_formKey.currentState != null) {
                          if (_formKey.currentState!.validate()) {
                            _auth();
                          }
                        }
                      },
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
                  child: Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.green,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          AppRoutes.REGISTER,
                        );
                      },
                      child: Text(
                        "Cadastrar",
                        textAlign: TextAlign.center,
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   alignment: Alignment.bottomCenter,
                //   padding: EdgeInsets.all(8),
                //   width: 200,
                //   height: 48,
                //   child: Material(
                //     child: MaterialButton(
                //       minWidth: MediaQuery.of(context).size.width,
                //       padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                //       onPressed: () {
                //         Navigator.of(context).pushNamed(
                //           AppRoutes.REGISTER,
                //         );
                //       },
                //       child: Text(
                //         "Cadastrar",
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //           decoration: TextDecoration.underline,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
