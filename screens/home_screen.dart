
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
     HomeScreen({super.key});
    final List<Map<String, String>> posts = [
      {
        "username": "madhu_gyawali",
        "profilePic": "https://picsum.photos/200/300",
        "postImage" : "https://picsum.photos/200",
        "caption" : "coding all day! ",

      },
      {
      "username": "flutter_dev",
      "profilePic": "https://picsum.photos/200/300",
      "postImage": "https://picsum.photos/200/300",
      "caption": "Coding all day! 💻",
    },
      
    ];

  @override
  Widget build(BuildContext context ) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("instagram clone", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: Icon(Icons.favorite_border_outlined),
          onPressed: (){},),
          IconButton(icon: Icon(Icons.message),
          onPressed: (){
            print("message icon pressed");
          },),
          
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index){
          final post = posts[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(post["profilePic"]!),
                ),
                title: Text(post["username"]!, style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.more_vert ),

              ),
             
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    SizedBox(width: 10),
                    Icon(Icons.comment),
                    SizedBox(width: 10),
                    Icon(Icons.send),
                  ],
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(post["caption"]!, style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Divider(),
            ],
          );
        }
      ),
      
    );
  }
}