import 'package:demax_exe_n1/class_php/myvar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// 
//  methita autsa 1641010541136
// 



class ClassDel {
static Future<void> delData(BuildContext context) async {
    try {
      final response = await http.delete(
        Uri.parse("http://172.21.12.62/mobileapp/deletedb.php?employee_id=$id_em"),
        headers: {
          "Accept": "application/json",
        },
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("ลบข้อมูลสำเร็จ"),
              backgroundColor: Colors.green,
            ),
          );


      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("การลบข้อมูลล้มเหลว"),
              backgroundColor: Colors.red,
            ),
          );

      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("เกิดข้อผิดพลาด"),
              backgroundColor: Colors.red,
            ),
          );

    }
  }
}
