import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Bu Alert Dialog"),
                    content: const Text("This is subtitle of Alert Dialog"),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, "Cancel");
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context, "Ok");
                          },
                          child: const Text("OK"))
                    ],
                  ),
                );
              },
              child: const Text("Click me"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: const Text("Bu Alert Dialog"),
                    content: const Text("This is subtitle of Alert Dialog"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, "Cancel");
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context, "Ok");
                          },
                          child: const Text("OK"))
                    ],
                  ),
                );
              },
              child: const Text("Click me"),
            ),
          ],
        ),
      ),
    );
  }
}
