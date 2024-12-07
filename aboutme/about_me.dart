import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("A B O U T   M E",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        
      ),
      body: const Column(
        children: [
          Center(
           
          child: Text("methita",
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,

          ),),

        ),
        Text("1641010541136",
        
            style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,

          ),)
          
        
        ],
      ),
      
    );
    
  }
}