import 'package:flutter/material.dart';
import 'post.dart';

/// List View
class PostList extends StatefulWidget {
  final List<Post> listItems;

  PostList(this.listItems);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  void like(Function callBack) {
    this.setState(() {
      callBack();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.widget.listItems.length,
        itemBuilder: (context, index) {
          var post = this.widget.listItems[index];
          return Card(
              child: Row(
                children: [
                  Expanded(
                      child: ListTile(
                        title: Text(post.postBody),
                        subtitle: Text(post.author),
                      )),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text(post.likes.toString(),
                            style: TextStyle(fontSize: 20)),
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      ),
                      IconButton(
                        icon: Icon( Icons.thumb_up ),
                        onPressed: () => this.like(post.likePost),
                        color: post.userLiked ? Colors.green : Colors.grey[400],
                      )
                    ],
                  )
                ],
              ));
        });
  }
}