import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:demax_exe_n1/class_php/myvar.dart';
// 
//  methita autsa 1641010541136
// 


class ClassUpData {
  static Future<void> updateData(BuildContext context) async {
    try {
      final response = await http.put(
        Uri.parse(
            "http://172.21.12.62/mobileapp/updatedb.php?employee_id=$id_em&first_name=$first_name&last_name=$last_name"),
        headers: {
          "Accept": "application/json",
        },
      );

      if (response.statusCode == 200) {     

          ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("แก้ไขข้อมูลสำเร็จ"),
            backgroundColor: Colors.green,
          ),
        );


      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("แก้ไขข้อมูลไม่สำเร็จ"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("แก้ไขข้อมูลไม่สำเร็จ"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}







// class ClassUpData {
//   static Future<void> updateData(BuildContext context) async {
//     try {
//       final response = await http.put(
//         Uri.parse(
//             "http://192.168.1.236/mobileapp/updatedb.php?employee_id=$id_em&first_name=$first_name&last_name=$last_name"),
//         headers: {
//           "Accept": "application/json",
//         },
//       );

//       if (response.statusCode == 200) {     
//         // แปลง response.body เป็น JSON
//         final responseData = json.decode(response.body);
        
//         // ตรวจสอบว่าค่าที่ต้องการอยู่ใน responseData หรือไม่
//         if (responseData['error'] == null) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Text("แก้ไขข้อมูลสำเร็จ"),
//               backgroundColor: Colors.green,
//             ),
//           );
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(responseData['error']),
//               backgroundColor: Colors.red,
//             ),
//           );
//         }
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text("แก้ไขข้อมูลไม่สำเร็จ"),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("แก้ไขข้อมูลไม่สำเร็จ"),
//           backgroundColor: Colors.red,
//         ),
//       );
//     }
//   }
// }
