import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(
                Icons.all_inclusive,
              ),
              SizedBox(width: 10),
              Text(
                "Calculus App",
              ),
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  Navigator.pushNamed(context, '/id');
                })
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.deepOrange,
                Colors.deepOrangeAccent
              ]),
            ),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/differentiate');
                      },
                      child: Card(
                          elevation: 5.0,
                          color: Colors.white60,
                          child: Container(
                              padding: EdgeInsets.all(16.0),
                              height: 55,
                              width: double.infinity,
                              child: Center(
                                child: Text("Differentiator",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ))),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/integrate');
                      },
                      child: Card(
                          elevation: 5.0,
                          color: Colors.white60,
                          child: Container(
                              padding: EdgeInsets.all(16.0),
                              height: 55,
                              width: double.infinity,
                              child: Center(
                                child: Text("Indefinite Integral",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ))),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/definteg');
                      },
                      child: Card(
                          elevation: 5.0,
                          color: Colors.white60,
                          child: Container(
                              padding: EdgeInsets.all(16.0),
                              height: 55,
                              width: double.infinity,
                              child: Center(
                                child: Text("Definite Integral",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ))),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/info');
                      },
                      child: Card(
                          elevation: 5.0,
                          color: Colors.white60,
                          child: Container(
                              padding: EdgeInsets.all(16.0),
                              height: 55,
                              width: double.infinity,
                              child: Center(
                                child: Text("Syntax Info",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ))),
                    )
                  ]),
            )));
  }
}
