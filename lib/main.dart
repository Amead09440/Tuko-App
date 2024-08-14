import 'package:flutter/material.dart';
import 'package:tuko/screens/homePage.dart';

void main() {
  runApp(const tukoApp());
}

class tukoApp extends StatelessWidget {
  const tukoApp({super.key});

  @override
  Widget build(context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home : Homepage()
    );
  }
}