import 'package:demax_exe_n1/class_php/ins_data/class_ins.dart';
import 'package:flutter/material.dart';
// 
//  methita autsa 1641010541136
// 



class ButtonIns extends StatefulWidget {
  const ButtonIns({super.key});

  @override
  State<ButtonIns> createState() => _ButtonInsState();
}

class _ButtonInsState extends State<ButtonIns> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            ClassIns.insertdb(context);
          });
          
        },
        child: const Text("เพิ่มข้อมูล"),
      ),
    );
  }
}

