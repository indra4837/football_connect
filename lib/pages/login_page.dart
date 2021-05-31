import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../pages/register_page.dart';
import '../pages/home_page.dart';

import '../models/auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  bool wrongPassword = false;
  var authHandler = new Auth();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // height: 100.0,
          // width: 190.0,
          // padding: EdgeInsets.only(top: 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
          ),
          child: Center(
            child: Image.asset('assets/images/FootballConnect_logo.png'),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          // padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColor)),
              labelText: 'Email',
              hintText: 'abc@gmail.com',
            ),
            controller: emailController,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          //padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColor)),
              labelText: 'Password',
              hintText: 'Enter secure password',
            ),
            controller: passwordController,
          ),
        ),
        FlatButton(
          onPressed: () {
            // TODO FORGOT PASSWORD SCREEN GOES HERE
          },
          child: Text(
            'Forgot Password',
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 15),
          ),
        ),
        Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: FlatButton(
            onPressed: () {
              authHandler
                  .handleSignInEmail(
                      emailController.text, passwordController.text)
                  .then(
                (User user) {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new HomePageWidget(),
                    ),
                  );
                },
              ).catchError((e) => print(e));
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (_) => HomePageWidget()));
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        SizedBox(
          height: 130,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'New User?',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Register()));
              },
              child: Text(
                'Create Account',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Theme.of(context).primaryColor),
              ),
            )
          ],
        ),
      ],
    );
  }
}
