import 'package:demo/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),


      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.green  
      ),
      initialRoute: "/home",
      routes:{
        "/":(context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/Loginpage" : (context) =>  LoginPage()
      } ,
    );
  }
}
