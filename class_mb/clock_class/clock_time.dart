import 'package:flutter/material.dart';
import 'analog_clock.dart';

class Clock_time extends StatefulWidget {
  const Clock_time({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Clock_time> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Clock"),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: Column(
        children: [
          const Expanded(
            child: AnalogClock(),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            }, 
            child: const Text("BAcK"),
          ),
        ],
      ),
    ),
  );
}