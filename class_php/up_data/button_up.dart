import 'package:demax_exe_n1/class_php/up_data/class_%20up_data.dart';
import 'package:flutter/material.dart';
// 
//  methita autsa 1641010541136
// 



class ButtonUp extends StatefulWidget {
  const ButtonUp({super.key});

  @override
  State<ButtonUp> createState() => _ButtonUpState();
}

class _ButtonUpState extends State<ButtonUp> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            ClassUpData.updateData(context);
          });
        },
        child: const Text("เปลี่ยนแปลงข้อมูล"),
      ),
    );
  }
}
