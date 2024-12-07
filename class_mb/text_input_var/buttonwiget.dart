import 'package:flutter/material.dart';
import 'myvar.dart';

class Buttonwiget extends StatelessWidget {
  const Buttonwiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.yellow.shade200,
      child: ElevatedButton(onPressed: () {
        print("str1" + str1);
        print("str2" + str2);
      }, child: const Text("Insert"),),
    );
  }
}