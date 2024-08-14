import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Catagory extends StatelessWidget {
  Catagory({this.text ,this.OnTap});
  String? text;
  Function()? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10 , vertical:5),
        decoration: BoxDecoration(
          color:  Color(0xff072ac8),
          borderRadius: BorderRadius.circular(10)
        ),
        width: 350,
        height: 80,
        child : Center(child: Text (text!, style: TextStyle(color : Colors.white, fontWeight: FontWeight.bold),))
      )
    );
  }
}
