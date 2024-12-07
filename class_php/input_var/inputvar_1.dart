import 'package:flutter/material.dart';
import 'package:demax_exe_n1/class_php/myvar.dart';
// 
//  methita autsa 1641010541136
// 






class Inputvar1 extends StatefulWidget {
  const Inputvar1({super.key});

  @override
  State<Inputvar1> createState() => _Inputvar1State();
}

class _Inputvar1State extends State<Inputvar1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.green[100],
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(), 
          helperText: "id_em",
          hintText: id_em,
        ),
        onChanged: (textIdEm) {
          id_em = textIdEm;
          
        },
      ),
    );
  }
}