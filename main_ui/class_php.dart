import 'package:flutter/material.dart';

class php_ extends StatelessWidget {
  const php_({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/ins');
          },
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
            ),
            
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "My PHP Data Application",
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
