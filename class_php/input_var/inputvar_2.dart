import 'package:flutter/material.dart';
import 'package:demax_exe_n1/class_php/myvar.dart';
// 
//  methita autsa 1641010541136
// 



class Inputvar2 extends StatefulWidget {
  const Inputvar2({super.key});

  @override
  State<Inputvar2> createState() => _Inputvar2State();
}

class _Inputvar2State extends State<Inputvar2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.green[100],
      child: TextField(
        decoration: InputDecoration(
          helperText: "first_name",
          hintText: first_name,
          border: OutlineInputBorder(), 
        ),
        onChanged: (textFirstName) {
          first_name = textFirstName;
        },
      ),
    );
  }
}