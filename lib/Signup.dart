import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}


class _MySignUpPageState extends State<SignUpPage> {
  get image => null;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
          children: <Widget>[
            Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                      child: Text(
                          "Welcome!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.w600,
                          )

                      ),
                    ),

                  ],
                )
            ),
            Container(
              padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0, bottom: 20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Email...",
                        labelStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        )
                    ) ,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Password...",
                        labelStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        )
                    ),
                    obscureText: true,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Enter School",
                        labelStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        )
                    ),
                    obscureText: false,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Enter Name..",
                        labelStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        )
                    ),
                    obscureText: false,
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)
                      ),

                    ),
                  ),

                ],
              ),
            ),
          ]
      ),
    );
  }
}