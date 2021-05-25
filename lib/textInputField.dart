import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final Function(String) callback;

  TextInputField(this.callback);

  @override
  _TextInputFieldState createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void onPost() {
    if (controller.text != "") {
      widget.callback(controller.text);
      controller.clear();
    }
    FocusScope.of(context).unfocus();   // to remove keyboard
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(
          hintText: "Tell us what you feel today...",
          prefixIcon: Icon(Icons.message),
          suffixIcon: Container(
            color: Colors.blueGrey[700],
            // margin: EdgeInsets.symmetric( vertical: 2.0 ),
            child: IconButton(
              icon: Icon(Icons.send),
              tooltip: "Post Message",
              color: Colors.white,
              splashColor: Colors.white,
              splashRadius: 24.0,
              onPressed: this.onPost,
            ),
          )),
    );
  }
}