import 'package:flutter/material.dart';
import 'homePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final controller = TextEditingController();
  String name = '';

  void submitName(){
    this.name = controller.text;
    controller.clear();
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage( this.name )));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: this.controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5, color: Colors.blueGrey)),
              prefixIcon: Icon(Icons.person,color: Colors.grey,),
              hintText: "Type Your Name",
              suffixIcon: IconButton(
                icon: Icon(Icons.done),
                onPressed: this.submitName,
                splashColor: Colors.blueGrey[200],
                splashRadius: 24.0,
                tooltip: "Submit",
              )),
        ),
      ),
    );
  }
}
