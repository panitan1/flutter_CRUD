import 'package:flutter/material.dart';

class BTextInputVar extends StatelessWidget {
  const BTextInputVar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/text_input_var');
          },
          child: Container(
            height: 100,
            color: Colors.green[200],
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     opacity: 0.5,
            //     image: AssetImage("images/class_mb.jpg"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "ช่องกรอกข้อความ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
