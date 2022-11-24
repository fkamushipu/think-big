// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pairs.dart',

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        elevation: .1,
        backgroundColor: const Color.fromARGB(255, 19, 131, 200),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Quiz Test", Icons.book),
            makeDashboardItem("Alphabet", Icons.book),
            makeDashboardItem("Calendar tasks", Icons.calendar_month),
            makeDashboardItem("Visual Test", Icons.camera_alt_outlined),
            makeDashboardItem("Alphabet", Icons.alarm),
            makeDashboardItem("Alphabet", Icons.alarm)
          ],
        ),
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 1.0,
        margin: const EdgeInsets.all(8.0),
        child: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 4, 88, 141)),
          child: new InkWell(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                const SizedBox(height: 40.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                const SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}
