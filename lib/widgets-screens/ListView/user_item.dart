import 'package:flutter/material.dart';

class UsersItem extends StatelessWidget {
  final String id;
  final String name;
  final String phoneNumber;
  final String imageUrl;
  final Function deleteUsers;

  UsersItem({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.imageUrl,
    required this.deleteUsers,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.red,
            backgroundImage: NetworkImage(imageUrl),
          ),
          title: Text(
            name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(phoneNumber),
          trailing: IconButton(
            onPressed: () {
              deleteUsers(id);
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
