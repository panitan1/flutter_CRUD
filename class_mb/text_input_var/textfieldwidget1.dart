import 'package:flutter/material.dart';
import 'myvar.dart';

class TextFieldWidget1 extends StatefulWidget {
  const TextFieldWidget1({Key? key}) : super(key: key);

  @override
  _TextFieldWidget1State createState() => _TextFieldWidget1State();
}

class _TextFieldWidget1State extends State<TextFieldWidget1> {
  // int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.blue.shade100,
      child: TextField(
        decoration: const InputDecoration(
          hintText: "enter text",
        ), 
        onChanged: (text) {
          setState(() {
            // _count++;
            str1 = text;
            //print(text);
          });
        },
      ), 
    ); 
  }
}