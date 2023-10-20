import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text widget ustida amallar"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Text1",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 24,
                ),
              ),
              Text(
                "Text2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "Text3",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                  fontSize: 24,
                ),
              ),
              Text(
                "Text4",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
