import 'package:flutter/material.dart';

class b_button_show_text_ extends StatelessWidget {
  const b_button_show_text_({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          
          onTap: () {
            Navigator.pushNamed(context, '/button_show_text');
          },
          child: Container(
            color: Colors.deepPurple[200],
            height: 100,
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     opacity: 0.5,
            //     image: AssetImage("images/class_mb.jpg"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              
              "ปุ่มแสดงข้อความ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
