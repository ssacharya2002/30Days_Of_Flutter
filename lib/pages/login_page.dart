import 'package:flutter/material.dart';
import 'package:demo/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      label: Text("User name"),
                    ),
                    onChanged: (value) => {name = value, setState(() {})},
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      label: Text("Password"),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoute.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton ? 50 : 100,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius:
                        BorderRadius.circular(changeButton ? 50 : 12)),
              ),
            )

            // ElevatedButton(
            //     child: Text("Login"),
            //     style: TextButton.styleFrom(minimumSize: Size(120, 40)),
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRoute.homeRoute);
            //     })
          ],
        ),
      ),
    );
  }
}
