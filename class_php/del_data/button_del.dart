import 'package:demax_exe_n1/class_php/del_data/class_del.dart';
import 'package:flutter/material.dart';

// 
//  methita autsa 1641010541136
// 


class ButtonDel extends StatefulWidget {
  const ButtonDel({super.key});

  @override
  State<ButtonDel> createState() => _ButtonUpState();
}

class _ButtonUpState extends State<ButtonDel> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            ClassDel.delData(context);
          });
        },
        child: const Text("ลบข้อมูล"),
      ),
    );
  }
}
