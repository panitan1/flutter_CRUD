//
//  By Panitan Thainlek 1641010541153
//  3/10/67
//

import 'package:demax_exe_n1/class_mb/text_field/outlined_text_field_example.dart';
import 'package:flutter/material.dart';
import 'dialog_example.dart';

// Flutter code sample for Material Design 3 (TextField).

class TextFieldExamplesApp extends StatelessWidget {
  const TextFieldExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField Examples')),
        body: Column(
          children: <Widget>[
            const Spacer(),
            const FilledTextFieldExample(),
            const OutlinedTextFieldExample(),
            const DialogExample(),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("BACK")),
          ],
        ),
      ),
    );
  }
}

class FilledTextFieldExample extends StatelessWidget {
  const FilledTextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.clear),
        labelText: 'Outlined',
        hintText: 'hint text',
        helperText: 'supporting text',
        border: OutlineInputBorder(),
      ),
    );
  }
}
