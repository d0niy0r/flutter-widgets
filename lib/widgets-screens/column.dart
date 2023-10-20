import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Column ustida amallar",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.amberAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Column 1",
                  style: TextStyle(
                    fontFamily: "StyleScript",
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            width: 200,
            height: 100,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Column 2",
                  style: TextStyle(
                    fontFamily: "StyleScript",
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            width: 100,
            height: 200,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Column 3",
                  style: TextStyle(
                    fontFamily: "StyleScript",
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
