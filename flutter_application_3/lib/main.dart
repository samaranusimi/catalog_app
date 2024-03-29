import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/cart_page.dart';
// import 'package:flutter_application_3/pages/home2.dart';
import 'package:flutter_application_3/utils/routes.dart';
import 'package:flutter_application_3/widgets/theme.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: "/",
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => Home_Page(),
          MyRoutes.cartRoute: (context) => Cart_Page()
        });
  }
}
