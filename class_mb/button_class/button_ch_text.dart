import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geeks For Geeks',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ButtonChText(),
    );
  }
}

class ButtonChText extends StatefulWidget {
  const ButtonChText({super.key});

  @override
  State<ButtonChText> createState() => _ButtonChText();
}

class _ButtonChText extends State<ButtonChText> {
  var currentindex = 0;

  // รายการข้อความที่จะแสดงบนปุ่ม
  var title_buttun = [
    "A1",
    "A2",
  ];

  void buttonClicked() {
    setState(() {
      if (currentindex == 0) { // ตรวจสอบขอบเขตเพื่อไม่ให้เกินขนาดของรายการ
       currentindex = 1;
      } else {
        currentindex = 0; // รีเซ็ต index เมื่อครบทั้งหมด
      }
    });
    print("currentindex");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "สวัดสดีชาวโลก",
      "สวัดสดีสุดหล่อฮาฟฟู้ว",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Geeks For Geeks"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[currentindex],
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: buttonClicked,
              child: Text(title_buttun[currentindex]),
            ),
          ],
        ),
      ),
    );
  }
}
