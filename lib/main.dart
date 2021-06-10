import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
import 'package:c4c/views/login.dart';
import 'package:c4c/views/home.dart';
//import 'package:c4c/colors.dart';
import 'package:c4c/views/add.dart';
import 'package:c4c/views/statistics.dart';
import 'package:c4c/views/register.dart';
import 'package:c4c/views/data.dart';
import 'package:c4c/views/available.dart';
import 'package:c4c/views/foodpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool _isAuth = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        bottomAppBarColor: Colors.green,
      ),
      routes: {
        AppRoutes.HOME: (_) => MyHome(),
        AppRoutes.LOGIN: (_) => MyLoginPage(),
        //AppRoutes.STATISTICS: (_) => MyStatistics(),
        AppRoutes.REGISTER: (_) => MyRegister(),
        AppRoutes.AVAILABLE: (_) => Foods(),
        AppRoutes.ADD: (_) => MyAddPage(),
        //AppRoutes.FOODPAGE: (_) => FoodPage(),
      },
      home: MyLoginPage(),
    );
  }
}
