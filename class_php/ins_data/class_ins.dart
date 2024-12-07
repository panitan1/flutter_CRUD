
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:demax_exe_n1/class_php/myvar.dart';
// 
//  methita autsa 1641010541136
// 

class ClassIns {
  static Future<void> insertdb(BuildContext context) async {
    try {
      final response = await http.put(
        Uri.parse(
            "http://172.21.12.62/mobileapp/insertdb.php?first_name=$first_name&last_name=$last_name"),
        headers: {
          "Accept": "application/json",
        },
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("เพิ่มข้อมูลสำเร็จ"),
              backgroundColor: Colors.green,
            ),
          );

      } else {
                ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("เพิ่มข้อมูลไม่สำเร็จ"),
              backgroundColor: Colors.red,
            ),
          );

      }
    } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("เพิ่มข้อมูลไม่สำเร็จ"),
              backgroundColor: Colors.red,
            ),
          );

    }
  }
}
