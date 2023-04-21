import 'package:demo/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'utils/routes.dart';

import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,  //it will remove the DEBUG banner in the screen
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),


      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primarySwatch: Colors.green  
      ),
      initialRoute: MyRoute.homeRoute,
      
      routes:{
        "/":(context) => LoginPage(),
        MyRoute.homeRoute : (context) =>  HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
      } ,
    );
  }
}
