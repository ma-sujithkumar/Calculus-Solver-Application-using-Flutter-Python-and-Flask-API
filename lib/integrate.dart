import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:calculus_app/fetchAns.dart';

class Integrate extends StatefulWidget {
  @override
  _IntegrateState createState() => _IntegrateState();
}

class _IntegrateState extends State<Integrate> {
  final exprController = TextEditingController();
  final depController = TextEditingController();
  final indepController = TextEditingController();
  String expression;
  String indep;
  String dep;
  bool _loaded = true;
  String answer = '';
  @override
  void dispose() {
    exprController.dispose();
    depController.dispose();
    indepController.dispose();
    super.dispose();
  }

  Future<void> getSolution(expression, indep, dep) async {
    Solution solution;
    var response = await get(
        "http://masujithkumar.pythonanywhere.com/integrate/$indep,$dep/$expression");
    _loaded = true;
    solution = Solution.fromJson(jsonDecode(response.body));
    setState(() {
      answer = solution.solution.toString();
    });
  }

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
        )),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.deepOrange,
                Colors.deepOrangeAccent
              ]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                TextField(
                  controller: exprController,
                  onChanged: (value) {
                    expression = value;
                  },
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                      fontSize: 23),
                  decoration: InputDecoration(
                    hintText: 'Enter an expression',
                  ),
                ),
                SizedBox(height: 28),
                TextField(
                  onChanged: (value) {
                    indep = value;
                  },
                  controller: indepController,
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                  decoration: InputDecoration(
                    hintText: 'Enter the independent variable, e.g. x',
                  ),
                ),
                SizedBox(height: 28),
                TextField(
                  onChanged: (value) {
                    dep = value;
                  },
                  controller: depController,
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                  decoration: InputDecoration(
                      hintText: 'Enter the dependent variable, e.g. y',
                      hoverColor: Colors.white),
                ),
                SizedBox(height: 28),
                Center(
                  child: RaisedButton(
                      elevation: 5.0,
                      color: Colors.white,
                      child: Text(
                        "Integrate",
                        style: TextStyle(fontSize: 20),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {
                        setState(() {
                          _loaded = false;
                          getSolution(expression, indep, dep);
                        });
                      }),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _loaded
                      ? SelectableText(
                          "Solution:\n $answer",
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        )
                      : CircularProgressIndicator(),
                )
              ]),
            )));
  }
}
