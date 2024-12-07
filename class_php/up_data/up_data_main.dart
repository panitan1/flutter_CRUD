import 'package:demax_exe_n1/class_php/input_var/inputvar_1.dart';
import 'package:demax_exe_n1/class_php/input_var/inputvar_2.dart';
import 'package:demax_exe_n1/class_php/input_var/inputvar_3.dart';
import 'package:demax_exe_n1/class_php/up_data/button_up.dart';
import 'package:flutter/material.dart';
// 
//  methita autsa 1641010541136
// 


class UpDataMain extends StatelessWidget {
  const UpDataMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UP DATA"),
        backgroundColor: Colors.red[300],
      ),
      body: const SingleChildScrollView( // ใช้ SingleChildScrollView
        child: Column(
          children: [
            Inputvar1(),
            Inputvar2(),
            Inputvar3(),
            ButtonUp(),
          ],
        ),
      ),
    );
  }
}
