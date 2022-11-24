// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

// ignore: camel_case_types
class pair extends StatefulWidget {
  const pair({Key? key}) : super(key: key);

  @override
  _pairPageState createState() => _pairPageState();
}

class _DashboardPageState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 40,
      child: TextButton(
        child: const Text(
          "Register",
          textAlign: TextAlign.center,
        ),
        onPressed: () => {Dashboard},
      ),
    ));
  }
}

// ignore: camel_case_types
class _pairPageState extends State<pair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 40,
      child: TextButton(
        child: const Text(
          "Register",
          textAlign: TextAlign.center,
        ),
        onPressed: () => {Dashboard},
      ),
    ));
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  // ignore: override_on_non_overriding_member
  bool _seePassword = true;
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 241, 240, 243),
      padding: const EdgeInsets.only(
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
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Username",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
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
              labelStyle: const TextStyle(
                color: Color.fromARGB(96, 48, 3, 3),
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: const TextStyle(fontSize: 20),
          ),
          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: TextButton(
                child: const Text(
                  "Recover the Password",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {}),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
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
                      children: const <Widget>[
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
                                builder: (context) => const Dashboard()),
                          )
                        }),
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            child: TextButton(
              child: const Text(
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
