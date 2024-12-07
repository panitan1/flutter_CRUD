import 'package:flutter/material.dart';

class button_show_txt extends StatefulWidget {
  const button_show_txt({super.key});

  @override
  State<button_show_txt> createState() => _button_show_txt();
}

class _button_show_txt extends State<button_show_txt> {
final titleController = TextEditingController();
String text = "No Value Entered";

void _setText() {
	setState(() {
	text = titleController.text;
	});
}

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text('GeeksforGeeks'),
		backgroundColor: Colors.green,
	),
	body: Column(
		children: [
		Padding(
			padding: const EdgeInsets.all(15),
			child: TextField(
			decoration: const InputDecoration(labelText: 'Title'),
			controller: titleController,
			),
		),
		const SizedBox(
			height: 8,
		),
		ElevatedButton(
			onPressed: _setText,
			style: ButtonStyle(
				elevation: MaterialStateProperty.all(8),
				backgroundColor: MaterialStateProperty.all(Colors.green)),
			child: const Text('Submit')),
		const SizedBox(
			height: 20,
		),
		Text(text),
		],
	),
	);
}
}
  

