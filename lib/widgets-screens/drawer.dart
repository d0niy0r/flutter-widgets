import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Drawer Widgets",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        toolbarHeight: 60,
        toolbarOpacity: 0.5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25)
          )
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              accountName: Text(
                "Islomjonov Doniyor",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text("islomjonov_doniyor@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(
                  "D",
                  style: TextStyle(fontSize: 30.0, color: Colors.green),
                ), //Text
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Text("Item 1"),
              onTap: null,
            ),
            Divider(
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(
                Icons.recent_actors,
              ),
              title: Text("Item 3"),
            ),
            ListTile(
              leading: Icon(
                Icons.folder_copy,
              ),
              title: Text("Item 4"),
            ),
            ListTile(
              leading: Icon(
                Icons.miscellaneous_services_rounded,
              ),
              title: Text("Item 2"),
            ),
          ],
        ),
      ),
    );
  }
}
