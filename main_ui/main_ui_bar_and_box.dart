import 'package:flutter/material.dart';
import 'class_mb.dart';
import 'class_php.dart';
import 'class_about.dart';

class MainUiBarAndBox extends StatefulWidget {
  const MainUiBarAndBox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainUiBarAndBoxState createState() => _MainUiBarAndBoxState();
}

class _MainUiBarAndBoxState extends State<MainUiBarAndBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.red[300],
            leading: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: const Text(
              'APP',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(

                ),
                // color: Colors.deepPurple[300],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: class_mb(),
          ),
          const SliverToBoxAdapter(
            child: php_(),
          ),
          const SliverToBoxAdapter(
            child: class_about(),
          ),
        ],
      ),
    );
  }
}
