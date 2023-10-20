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
      body: Container(
        width: 200,
        height: 200,
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("BU yerda column qator boshiga tekislangan va o'rtada"),
            Text("Salom"),
          ],
        ),
      ),
    );
  }
}
