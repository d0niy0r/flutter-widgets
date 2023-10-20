import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text widget ustida amallar"),
      ),
      body: Container(
        color: Colors.blue,
        width: 200,
        height: 200,
        child: Column(
          children: [
            Text("Text1",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),)
          ],
        ),
      ),
    );
  }
}
