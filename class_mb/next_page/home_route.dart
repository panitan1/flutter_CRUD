import 'package:flutter/material.dart';


class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        backgroundColor: Colors.green,
      ),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
            onPressed: () { Navigator.pushNamed(context,'/second');},
            child: const Text("clack me"),
             ),
             ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/third');
             }, child: const Text("clakkkkk"))
          ],
        ),
      ),
    );
  }
}