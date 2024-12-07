import 'package:flutter/material.dart';
import 'package:demax_exe_n1/class_php/myvar.dart';
// 
//  methita autsa 1641010541136
// 


class Inputvar3 extends StatefulWidget {
  const Inputvar3({super.key});

  @override
  State<Inputvar3> createState() => _Inputvar3State();
}

class _Inputvar3State extends State<Inputvar3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.green[100],
      child: 
      TextField(
        decoration: InputDecoration(
          helperText: "last_name",
          hintText: last_name,
          border: OutlineInputBorder(), 
        ),
        onChanged: (textLastName) {
          last_name = textLastName;
        },
      ),
    );
  }
}