import 'package:calculus_app/defintegrate.dart';
import 'package:calculus_app/differentiate.dart';
import 'package:calculus_app/home.dart';
import 'package:calculus_app/integrate.dart';
import 'package:flutter/material.dart';
import 'package:calculus_app/id.dart';
import 'package:calculus_app/syntaxinfo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculus App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: "Ubuntu"),
      home: Home(),
      routes: {
        '/differentiate': (context) => Differentiate(),
        '/integrate': (context) => Integrate(),
        '/definteg': (context) => DefInteg(),
        '/id': (context) => ID(),
        '/info': (context) => Info()
      },
    );
  }
}
