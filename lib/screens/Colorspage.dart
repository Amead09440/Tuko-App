import 'package:flutter/material.dart';
import 'package:tuko/component/colorsItem.dart';
import 'package:tuko/component/CustomAppbar.dart';
import 'package:tuko/models/Models.dart';

class Colorspage extends StatelessWidget {
  const Colorspage({super.key});
  final List<Colorsmodel> info = const [
    Colorsmodel(
        enName: "Red",
        jpName: "aka",
        image: "assets/images/colors/color_red.png",
        sound: "sounds/colors/red.wav"
        ),
    Colorsmodel(
        enName: "black",
        jpName: "kuro",
        image: "assets/images/colors/color_black.png",
        sound: "sounds/colors/black.wav"
        ),
    Colorsmodel(
        enName: "brown",
        jpName: "cha-iro",
        image: "assets/images/colors/color_brown.png",
        sound: "sounds/colors/brown.wav"
        ),
    Colorsmodel(
        enName: "Yellow",
        jpName: "ki-iro",
        image: "assets/images/colors/yellow.png",
        sound: "sounds/colors/yellow.wav"
        ),
      Colorsmodel(
        enName: "gray",
        jpName: "Gure",
        image: "assets/images/colors/color_gray.png",
        sound: "sounds/colors/gray.wav"
        ),
    Colorsmodel(
        enName: "green",
        jpName: "midori",
        image: "assets/images/colors/color_green.png",
        sound: "sounds/colors/green.wav"
        ),
      Colorsmodel(
        enName: "white",
        jpName: "shiro",
        image: "assets/images/colors/color_white.png",
        sound: "sounds/colors/white.wav"
        ),
    Colorsmodel(
        enName: "dusty yellow",
        jpName: "Hokori ppoi kiiro",
        image: "assets/images/colors/color_dusty_yellow.png",
        sound: "sounds/colors/dusty yellow.wav"
        ),
        
        
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child:
                CustomAppBar(PageName: "Colors", BarColor: Color(0xffff6d00))),
        body:ListView.builder(
          itemCount: info.length,
          itemBuilder: (context , index) {
            return ColorsItem(INFO: info[index], Colors: Color(0xffff8500));
          },
        )
      );
  }
}
