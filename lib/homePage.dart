import 'package:flutter/material.dart';
import 'package:widgets/widgets-screens/Row.dart';
import 'package:widgets/widgets-screens/buttons.dart';
import 'package:widgets/widgets-screens/column.dart';
import 'package:widgets/widgets-screens/images.dart';
import 'package:widgets/widgets-screens/text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Widgetlar ustida amallar",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ColumnPage()));
                  },
                  child: const Text(
                    "Column",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "StyleScript",
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TextPage()));
                  },
                  child: const Text(
                    "Text",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "StyleScript",
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RowPage()));
                  },
                  child: const Text(
                    "Row",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "StyleScript",
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ImagesPage()));
                  },
                  child: const Text(
                    "Images type",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "StyleScript",
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ButtonsPage()),
                    );
                  },
                  child: const Text(
                    "Button types",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "StyleScript",
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.black45,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ImagesPage()));
                  },
                  child: const Text(
                    "Stack",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "StyleScript",
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ImagesPage()));
                  },
                  child: const Text(
                    "Card",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "StyleScript",
                      fontSize: 24,
                    ),
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
