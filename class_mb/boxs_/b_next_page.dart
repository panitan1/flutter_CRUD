import 'package:flutter/material.dart';

class BNextPage extends StatelessWidget {
  const BNextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/homeroute');
          },
          child: Container(
            height: 100,
            color: Colors.deepPurple[200],
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     opacity: 0.5,
            //     image: AssetImage("images/class_mb.jpg"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "คลิกเปลี่ยนหน้า",
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
