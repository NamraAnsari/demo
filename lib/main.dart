import 'package:flutter/material.dart';
import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginPage(),
    );
  }
}

// class HomePage extends StatelessWidget{
//   @override
//   Widget build( BuildContext context ){
//     return Scaffold(
//       appBar: AppBar(title: Text("Blog")),
//       /// Simple Column Widget
//       // body: Column(children: <Widget>[ FirstWidget(), FirstWidget(), FirstWidget() ],)
//       body: TextInputField()
//     );
//   }
// }

/// Multiple Repeated Widgets
// class FirstWidget extends StatelessWidget{
//   @override
//   Widget build( BuildContext context ){
//     return Text('Hello World');
//   }
// }

/// Manipulating and Recording states of Stateful Widgets
// class TextInputField extends StatefulWidget{
//   @override
//   _TextInputFieldState createState() => _TextInputFieldState();
// }
// class _TextInputFieldState extends State<TextInputField>{
//   final controller = TextEditingController();
//   String currentMsg = '';
//
//   @override
//   void dispose(){
//     super.dispose();
//     controller.dispose();
//   }
//
//   void setMsg( currentMsg ){
//     if( currentMsg == "Hello World" ){
//       controller.clear();
//       currentMsg = '';
//     }
//     setState((){this.currentMsg = currentMsg;});
//   }
//
//   @override
//   Widget build( BuildContext context ){
//     return Column(
//         children: <Widget>[
//           TextField(
//             controller: this.controller,
//             decoration: InputDecoration( prefixIcon: Icon(Icons.message),
//             hintText: "Tell us what you feel today" ),
//             onChanged: (currentMsg) => this.setMsg(currentMsg)
//           ),
//           Text(this.currentMsg)
//         ]
//     );
//   }
// }


