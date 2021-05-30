import 'dart:html';
import 'dart:ui';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Signup.dart';
import 'WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        "/Signup": (BuildContext context) => new SignUpPage()
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
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
                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.only(top: 15.0, left: 22.0),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                        decoration: TextDecoration.underline
                      ),
                    ),

                  ),
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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return WelcomePage();
                        }));
                      },
                      child: Center(
                        child: Text(
                          "LOGIN",
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text("Login In With Google",
                          style: TextStyle(
                           fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat"
                          )
                        )
                      ),
                          ]
                    ),
                  ),
                )


              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "New to College Connect?",
                style: TextStyle(
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(width: 5.0,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/Signup");
                },
                child: Text("Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                        decoration: TextDecoration.underline
                    )
                ),
              )
            ],
          )
        ]
      ),
      );
  }
}