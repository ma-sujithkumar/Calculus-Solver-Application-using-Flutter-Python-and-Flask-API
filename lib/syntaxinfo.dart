import 'package:flutter/material.dart';

class Info extends StatelessWidget {
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "1.To use powers, use the form a**b where a is the base and b is the exponent",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "2.To use e power x, use exp(x)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "3. To use a quadratic polynomial like x^2+2x+1, use x**2+2*x+1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                ]),
          )),
    );
  }
}
