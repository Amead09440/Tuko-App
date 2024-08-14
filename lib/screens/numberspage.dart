import 'package:flutter/material.dart';
import 'package:tuko/component/CustomAppbar.dart';
import 'package:tuko/component/NumbersItem.dart';
import 'package:tuko/models/Models.dart';

// ignore: must_be_immutable
class Numberspage extends StatelessWidget {
  final List<Numbers> numbers = const [
    Numbers(
        sound : "sounds/numbers/number_one_sound.mp3",
        enName: "One",
        jpName: "ichi",
        image: "assets/images/numbers/number_one.png"),
    Numbers(
        sound : "sounds/numbers/number_two_sound.mp3",
        enName: "Two",
        jpName: "ni",
        image: "assets/images/numbers/number_two.png"),
    Numbers(
        sound : "sounds/numbers/number_three_sound.mp3",
        enName: "Three",
        jpName: "san",
        image: "assets/images/numbers/number_three.png"),
    Numbers(
        sound : "sounds/numbers/number_four_sound.mp3",
        enName: "Four",
        jpName: "shi",
        image: "assets/images/numbers/number_four.png"),
    Numbers(
        sound : "sounds/numbers/number_five_sound.mp3",
        enName: "Five",
        jpName: "go",
        image: "assets/images/numbers/number_five.png"),
    Numbers(
        sound : "sounds/numbers/number_six_sound.mp3",
        enName: "Six",
        jpName: "roku",
        image: "assets/images/numbers/number_six.png"),
    Numbers(
        sound : "sounds/numbers/number_seven_sound.mp3",
        enName: "Seven",
        jpName: "Sebun",
        image: "assets/images/numbers/number_seven.png"),
    Numbers(
        sound : "sounds/numbers/number_eight_sound.mp3",
        enName: "Eight",
        jpName: "hachi",
        image: "assets/images/numbers/number_eight.png"),
    Numbers(
        sound : "sounds/numbers/number_nine_sound.mp3",
        enName: "Nine",
        jpName: "Ku",
        image: "assets/images/numbers/number_nine.png"),
    Numbers(
        sound : "sounds/numbers/number_ten_sound.mp3",
        enName: "Ten",
        jpName: "jū",
        image: "assets/images/numbers/number_ten.png")
  ];

  Numberspage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(60),
          child:  CustomAppBar(PageName: "Numbers" , BarColor: Color(0xff3a5a40),)
          ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(number: numbers[index] , colorss: Color(0xff3a5a40));
          },
        ));
  }

  // List<Widget> getList(List<Numbers> numbers) {
  //   List<Item> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(Item(number: numbers[i] , colorss: Color(0xff95d5b2),));
  //   }
  //   return itemsList;
  // }
}
