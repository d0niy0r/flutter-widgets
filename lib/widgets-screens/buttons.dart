import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Buttontypes",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(24),
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shadowColor: Colors.lightBlue,
                padding: const EdgeInsets.all(20),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Elevated Button",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shadowColor: Colors.red,
                  elevation: 10,
                  minimumSize: const Size(300, 50)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Outlined Button"),
            ),
            const SizedBox(
              height: 50,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 60,
              icon: Icon(Icons.add_business_sharp, color: Colors.deepOrange),
            ),
          ],
        ),
      ),
    );
  }
}
