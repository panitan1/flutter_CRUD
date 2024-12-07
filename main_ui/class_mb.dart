
import 'package:flutter/material.dart';

class class_mb extends StatelessWidget {
  const class_mb({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/class_mb');
          },
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
             
            ),
            // color: Colors.deepPurple[300],
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Class Mobile Application",
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

class class_mb_in extends StatelessWidget {
  const class_mb_in({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
              // border: Border.all(color: Colors.deepPurple),
              // borderRadius: BorderRadius.circular(20),
            ),
            // color: Colors.deepPurple[300],
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Class Mobile Application",
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
