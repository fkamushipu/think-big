import 'dart:html';
import 'package:flutter_application_1/pages/Login.page.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 252, 251, 249),
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      child: ListView(
        children: <Widget>[
          SizedBox(
            child: Text(
              "REGISTER",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Schyler',
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: 40,
              ),
            ),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                icon: const Icon(Icons.person),
                labelText: "Name",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                icon: const Icon(Icons.person),
                labelText: "Surename",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
                icon: const Icon(Icons.location_city),
                labelText: "Location",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                icon: const Icon(Icons.local_activity),
                labelText: "Nationality",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: const Icon(Icons.email),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                icon: const Icon(Icons.phone),
                labelText: "Number of phone",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                icon: const Icon(Icons.password),
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: TextStyle(fontSize: 20),
          ),
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                icon: const Icon(Icons.password_outlined),
                labelText: "Confirm Password",
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
          Container(
            height: 40,
            child: TextButton(child: Text(
                "Sign Up",
                textAlign: TextAlign.center,
              ),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()))
              },
            ),
          )
        ],
      ),
    ));
  }
}
