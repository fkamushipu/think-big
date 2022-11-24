import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/Login.page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 238, 243, 226),
                  Color.fromARGB(255, 162, 210, 237),
                ],
              ),
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/start.gif",
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                    Container(
                        height: 200,
                        child: Text("Learn-together",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 29, 12, 98),
                              fontFamily: 'Schyler',
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ))),
                    Image.asset(
                      "assets/load.gif",
                      height: 150.0,
                      width: 150.0,
                      
                    ),
                  ],
                ),
              ],
            )));
  }
}
