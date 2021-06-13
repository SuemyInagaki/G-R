import 'package:flutter/material.dart';
import 'package:c4c/routes/app_route.dart';
import 'package:c4c/views/login.dart';
import 'package:c4c/views/home.dart';
import 'package:c4c/views/add.dart';
import 'package:c4c/views/register.dart';
import 'package:c4c/views/available.dart';
import 'package:provider/provider.dart';
import 'package:c4c/provider/users.dart';
import 'package:c4c/provider/foods.dart' as food;
import 'package:c4c/provider/requests.dart';
import 'package:c4c/components/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool _isAuth = false;
  double w = 500;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => food.Foods(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => RequestsProvider(),
        ),
      ],
      child: Center(
        child: SizedBox(
          child: MaterialApp(
            title: 'Give & Receive',
            theme: ThemeData(
              primarySwatch: MyColors.myRed,
              backgroundColor: MyColors.myWhite,
              // bottomAppBarColor: Colors.green,
            ),
            routes: {
              //AppRoutes.HOME: (_) => MyHome(),
              AppRoutes.LOGIN: (_) => MyLoginPage(),
              AppRoutes.REGISTER: (_) => MyRegister(),
              //AppRoutes.AVAILABLE: (_) => FoodsAvailable(),
              //AppRoutes.ADD: (_) => MyAddPage(),
            },
            home: MyLoginPage(),
          ),
          width: w,
          height: w * 16 / 9,
        ),
      ),
    );
  }
}
