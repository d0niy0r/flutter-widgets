import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Stack(
                fit: StackFit.passthrough,
                children: [
                  // Max Size Widget
                  Container(
                    height: 300,
                    width: 400,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'Top Widget: Green',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 20,
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          'Middle Widget',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          'Bottom Widget',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                margin: const EdgeInsets.all(24),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/image/asset_image.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.black26,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            const IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                            const IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
