//-------------GPS___________
// 
//  methita autsa 1641010541136
// 


import 'package:demax_exe_n1/aboutme/about_me.dart';
import 'package:demax_exe_n1/class_mb/main_mb.dart';
import 'package:demax_exe_n1/class_mb/next_page/home_route.dart';
import 'package:demax_exe_n1/class_mb/next_page/secong_route.dart';
import 'package:demax_exe_n1/class_mb/next_page/third_route.dart';
import 'package:demax_exe_n1/class_mb/button_class/button_ch_text.dart';
import 'package:demax_exe_n1/class_mb/button_class/button_show_txt.dart';
import 'package:demax_exe_n1/class_mb/clock_class/clock_time.dart';
import 'package:demax_exe_n1/class_mb/lake_class/lake_page.dart';
import 'package:demax_exe_n1/class_mb/text_field/text_field.dart';
import 'package:demax_exe_n1/class_mb/text_input_var/text_input_var.dart';
import 'package:demax_exe_n1/class_php/del_data/del_data_main.dart';
import 'package:demax_exe_n1/class_php/ins_data/ins_ph.dart';
import 'package:demax_exe_n1/class_php/main_all_php/classview.dart';
// import 'package:demax_exe_n1/class_php/main_run_php1.dart';
import 'package:demax_exe_n1/class_php/up_data/up_data_main.dart';
//-------------GPS___________

import 'package:flutter/material.dart';

//-------------BOXกล่อง___________
import 'main_ui/main_ui_bar_and_box.dart';
//-------------BOXกล่อง___________

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //-------------GPS___________
      initialRoute: '/',
      routes: {
        '/': (context) => const MainUiBarAndBox(),
        '/aboutme': (context) => const AboutMe(),
        // '/php': (context) => const MainMb(),
        '/class_mb': (context) => const MainMb(),

        '/button_change_text': (context) => const ButtonChText(),
        '/button_show_text': (context) => const button_show_txt(),
        '/page_lake': (context) => const Mainlake(),
        '/b_clock': (context) => const Clock_time(),
        '/text_field': (context) => const TextFieldExamplesApp(),
        '/text_input_var': (context) => const TextInputVar(),

        //-------------GPS<Class_MB>___________
        '/homeroute': (context) => const HomeRoute(),
        '/second': (context) => const SecongRoute(),
        '/third': (context) => const ThirdRoute(),
        //-------------GPS<Class_MB>___________
        

        //-------------GPS<Class_PHP>___________
        '/ins': (context) => const Classview(),
        '/up_data': (context) => const UpDataMain(),
        '/insdata': (context) => InsPh(),
        '/deldata': (context) => const DelDataMain(),
        //-------------GPS<Class_PHP>___________
      },
      //-------------GPS___________
      debugShowCheckedModeBanner: false,
      // home: const MainUiBarAndBox(),
    );
  }
}
