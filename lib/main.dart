import 'package:demo/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),


      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primarySwatch: Colors.green  
      ),
      initialRoute: "/home",
      routes:{
        "/":(context) => LoginPage(),
        "/home" : (context) => LoginPage(),
        "/Loginpage" : (context) =>  LoginPage()
      } ,
    );
  }
}
