import 'package:flutter/material.dart';

class class_about extends StatelessWidget {
  const class_about({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/aboutme');
          },
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
            ),
          
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "About Me",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
