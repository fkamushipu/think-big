import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Dashboard.dart';
import 'package:flutter_application_1/pages/Register.page.dart';
import 'package:flutter_application_1/pages/Dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class Math extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool _seePassword = true;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 241, 240, 243),
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      //color: Colors.white,
      child: ListView(
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("assets/know.png"),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: const Icon(Icons.person),
                labelText: "Username",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: _seePassword,
            decoration: InputDecoration(
              icon: const Icon(Icons.password),
              labelText: "Password",
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _seePassword = !_seePassword;
                  });
                },
                child: Icon(
                    _seePassword ? Icons.visibility_off : Icons.visibility),
              ),
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),
          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: TextButton(
                child: Text(
                  "Recover the Password",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {}),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [1, 1],
                    colors: [
                      Color.fromARGB(255, 66, 165, 167),
                      Color.fromARGB(255, 66, 165, 167),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              child: SizedBox.expand(
                child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Log In",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()),
                          )
                        }),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: TextButton(
              child: Text(
                "Register",
                textAlign: TextAlign.center,
              ),
              onPressed: () => {},
            ),
          )
        ],
      ),
    ));
  }
}
