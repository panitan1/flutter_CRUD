import 'package:demax_exe_n1/class_php/del_data/button_del.dart';
import 'package:demax_exe_n1/class_php/input_var/inputvar_1.dart';
import 'package:flutter/material.dart';
// 
//  methita autsa 1641010541136
// 



class DelDataMain extends StatelessWidget {
  const DelDataMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ลบข้อมูล"),
        backgroundColor: Colors.red[300],
      ),
      body: const SingleChildScrollView( // ใช้ SingleChildScrollView
        child: Column(
          children: [
            Inputvar1(),
            ButtonDel(),
          ],
        ),
      ),
    );
  }
}
