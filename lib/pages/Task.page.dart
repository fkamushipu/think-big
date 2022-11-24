import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/Starting.dart';
import 'package:flutter_application_1/pages/Login.page.dart';
import 'package:flutter/material.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Think Big',
      theme: ThemeData(primarySwatch: Colors.green),
    );
    body:
    Container(
      child: TextButton(child: build('Login,
      ),
    )
    );
  }
}
