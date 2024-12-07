import 'package:flutter/material.dart';
import 'buttonwiget.dart';
import 'textfieldwidget1.dart';
import 'textfieldwidget2.dart';

class TextInputVar extends StatelessWidget {
  const TextInputVar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("text_input"),
      ),
      body: Column(children: [
        Container(
          color: Colors.green.shade100,
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const TextFieldWidget1(),
              const TextFieldWidget2(),
              const Buttonwiget(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("BACK")),
            ],
          ),
        )
      ]),
    );
  }
}