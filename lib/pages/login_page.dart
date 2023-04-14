import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
     child: Column(
      children: [
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        

        const Text(
          "Welcome",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
            decoration: const InputDecoration(
              hintText:"Enter username" ,
              label: Text("User name"),
        
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText:"Enter password" ,
              label: Text("Password"),
        
            ),
          ),
          SizedBox(
            height:20.0 ,
          )
            ],
          ),
        ),
        ElevatedButton( child: Text("Login"), 
        style: TextButton.styleFrom(),
        onPressed:() {print("day 4 completed");})
      ],
     ),
    );
  }
}  