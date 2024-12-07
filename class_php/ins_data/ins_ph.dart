import 'package:demax_exe_n1/class_php/input_var/inputvar_2.dart';
import 'package:demax_exe_n1/class_php/input_var/inputvar_3.dart';
import 'package:demax_exe_n1/class_php/ins_data/button_ins.dart';
import 'package:flutter/material.dart';
// 
//  methita autsa 1641010541136
// 


class InsPh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADD DATA"),
        backgroundColor: Colors.red[300],
      ),
      body: const Column(
        children: [
          Inputvar2(),
          Inputvar3(),
          ButtonIns(),
        ],
      ),
      );
  }
}
