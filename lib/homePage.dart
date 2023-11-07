import 'package:flutter/material.dart';
import 'package:widgets/widgets-screens/Row.dart';
import 'package:widgets/widgets-screens/alert_dialog.dart';
import 'package:widgets/widgets-screens/buttons.dart';
import 'package:widgets/widgets-screens/card.dart';
import 'package:widgets/widgets-screens/column.dart';
import 'package:widgets/widgets-screens/form.dart';
import 'package:widgets/widgets-screens/gridView.dart';
import 'package:widgets/widgets-screens/images.dart';
import 'package:widgets/widgets-screens/ListView/contacs.dart';
import 'package:widgets/widgets-screens/progressbar.dart';
import 'package:widgets/widgets-screens/snackbar.dart';
import 'package:widgets/widgets-screens/stack.dart';
import 'package:widgets/widgets-screens/tabbar.dart';
import 'package:widgets/widgets-screens/text.dart';
import 'package:widgets/widgets-screens/text_field.dart';

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
                        MaterialPageRoute(builder: (context) => StackPage()));
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
                        MaterialPageRoute(builder: (context) => CardPage()));
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
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Colors.yellowAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TextFieldPage()));
                  },
                  child: const Text(
                    "Text Field",
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
                      backgroundColor: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FormPage()));
                  },
                  child: const Text(
                    "Form",
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
                      backgroundColor: Colors.cyanAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlertDialogPage()));
                  },
                  child: const Text(
                    "Alert Dialog",
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
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProgressBarPage()));
                  },
                  child: const Text(
                    "Progressbar",
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
                      backgroundColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SnackBarPage()));
                  },
                  child: const Text(
                    "Snack Bar",
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
                      backgroundColor: Colors.black26,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TabbarPage()));
                  },
                  child: const Text(
                    "Tabbar",
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
                      backgroundColor: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Contacts(),
                      ),
                    );
                  },
                  child: const Text(
                    "ListView",
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
                      backgroundColor: Colors.tealAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridViewPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "GridView",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
