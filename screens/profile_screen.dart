import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String profilePic = "https://dummyimage.com/300";
  final String username = "john_doe";

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(radius: 40, backgroundImage: NetworkImage(profilePic)),
          SizedBox(height: 10),
          Text(username, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text("Edit Profile")),
          Divider(),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: 9, // Mock posts
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[300],
                  child: Icon(Icons.image, size: 50),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
