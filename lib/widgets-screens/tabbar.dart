import 'package:flutter/material.dart';

class TabbarPage extends StatelessWidget {
  const TabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbar Widgets'),
          centerTitle: true,
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'ListView',
                icon: Icon(Icons.flight),
              ),
              Tab(
                text: 'GridView',
                icon: Icon(Icons.luggage),
              ),
              Tab(
                text: 'Explore',
                icon: Icon(Icons.explore),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Icon(Icons.flight),
            Icon(Icons.luggage),
            Icon(Icons.explore),
          ],
        ),
      ),
    );
  }
}
