import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image types"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Asset image",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: Image.asset("assets/image/asset_image.jpg"),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Network image",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: Image.network(
                  "https://cdn.futura-sciences.com/sources/images/dossier/773/01-intro-773.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
