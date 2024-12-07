import 'package:flutter/material.dart';

class BClock extends StatelessWidget {
  const BClock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          
          onTap: () {
            Navigator.pushNamed(context, '/b_clock');
          },
          child: Container(
            color: Colors.green[200],
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
              
              "นาฬิกา",
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
