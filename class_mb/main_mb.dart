import 'package:demax_exe_n1/class_mb/boxs_/b_clock.dart';
import 'package:demax_exe_n1/class_mb/boxs_/b_next_page.dart';
import 'package:demax_exe_n1/class_mb/boxs_/b_text_field.dart';
import 'package:demax_exe_n1/class_mb/boxs_/b_text_input_var.dart';
import 'package:demax_exe_n1/main_ui/class_mb.dart';
import 'package:flutter/material.dart';
import 'boxs_/b_button_change_text_.dart';
import 'boxs_/b_button_show_text_.dart';
import 'boxs_/b_lake.dart';

class MainMb extends StatefulWidget {
  const MainMb({super.key});

  @override
  State<MainMb> createState() => _MainMbState();
}

class _MainMbState extends State<MainMb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.deepPurple,
            leading: IconButton(
              icon: const Icon(
                Icons.hotel_class,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context, '/');
              },
            ),
            title: const Text(
              "C L A S S  M O B I L E  A P P",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.deepPurple[300],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: class_mb_in(),
          ),
          const SliverToBoxAdapter(
            child: b_button_show_text_(),
          ),
          const SliverToBoxAdapter(
            child: b_button_change_text_(),
          ),
          const SliverToBoxAdapter(
            child: BLake(),
          ),
          const SliverToBoxAdapter(
            child: BClock(),
          ),
          const SliverToBoxAdapter(
            child: Textfield(),
          ),
          const SliverToBoxAdapter(
            child: BTextInputVar(),
          ),
          const SliverToBoxAdapter(
            child: BNextPage(),
          ),
        ],
      ),
    );
  }
}
