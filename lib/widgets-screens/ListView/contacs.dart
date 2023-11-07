import 'package:flutter/material.dart';
import 'package:widgets/widgets-screens/ListView/user_item.dart';

class Contacts extends StatefulWidget {
  Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final List<Map<String, dynamic>> users = [
    {
      "id": "user1",
      "name": "Ann Neal",
      "imageUrl":
      "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "phoneNumber": "401-467-2353",
    },
    {
      "id": "user2",
      "name": "Eva Bergman",
      "imageUrl":
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      "phoneNumber": "411-799-0712",
    },
    {
      "id": "user3",
      "name": "Lisa Oneli",
      "imageUrl":
      "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
      "phoneNumber": "304-174-6289",
    },
    {
      "id": "user4",
      "name": "Jeffrey Bowles",
      "imageUrl":
      "https://lenstax.com/auth/app-assets/images/profile/user-uploads/user-04.jpg",
      "phoneNumber": "662-890-3548"
    },
  ];

  void deleteUser(String userId){
    setState((){
      users.removeWhere((user) => user["id"] == userId
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text(
      //     "Foydalanuvchilar Ro'yxati",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 24,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Foydalanuvchilar Ro'yxati",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: ListView(
                itemExtent: 84,
                children: users.map((user) {
                  return UsersItem(
                    id: user['id']!,
                    name: user["name"]!,
                    phoneNumber: user["phoneNumber"]!,
                    imageUrl: user["imageUrl"]!,
                    deleteUsers: deleteUser,
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
    );
  }
}