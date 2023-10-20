import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row widegt ustuda amallar"),
      ),
      body: Center(
        child: Row(
          textBaseline: TextBaseline.ideographic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
              child: const Center(
                child: Text(
                  'ROW 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
              child: const Center(
                child: Text(
                  'ROW 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              child: const Center(
                child: Text(
                  'ROW 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
