import 'package:flutter/material.dart';
import 'post.dart';
import 'textInputField.dart';
import 'postList.dart';

class HomePage extends StatefulWidget {
  final String name;

  HomePage( this.name );

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String msg = '';
  List<Post> posts = [];

  void newPost(String msg) {
    this.setState(() {
      posts.add(new Post(msg, widget.name ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blog")),
      body: Column(
        children: <Widget>[
          Expanded(child: PostList(this.posts)),
          TextInputField(newPost),
        ],
      ),
    );
  }
}