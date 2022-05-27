// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ui_app/Screens/second_screen.dart';

void main() {
  runApp(const MaterialApp(home: First()));
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          margin: EdgeInsets.only(top: 60.0),
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            children: [
              Icon(Icons.clean_hands_outlined,
                  size: 55, color: Colors.blue[900]),
              SizedBox(
                height: 15,
              ),
              Text("CLEAN HANDS",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 0.5,
                    letterSpacing: 0.5,
                    color: Colors.blue[900],
                  )),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Login to your account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 600.0,
                height: 60.0,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.blueGrey.shade100,
                      style: BorderStyle.solid),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Email address",
                      labelStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 600.0,
                height: 60.0,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.blueGrey.shade100,
                      style: BorderStyle.solid),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: Colors.blue[900],
                      border: Border.all(
                          color: Colors.blueGrey.shade100,
                          style: BorderStyle.solid),
                    ),
                    // color: Colors.blue[900],
                    width: 250,
                    height: 45,
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)))),
              ),
              SizedBox(height: 5),
              Text(" * Or Sign in with -",
                  style: TextStyle(color: Colors.grey)),
              SizedBox(height: 5),
              Center(
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook_sharp,
                        color: Colors.blue[900],
                      ),
                      // Icon(Icons.),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Second()));
                      },
                      child: Text("Sign Up.",
                          style: TextStyle(color: Colors.blue[900])))
                ],
              ),
            ],
          )),
    );
  }
}
