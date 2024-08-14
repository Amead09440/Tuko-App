import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tuko/models/Models.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key,required this.INFO , required this.Colors});
  final Colorsmodel INFO;  
  final Color Colors ;
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin:const  EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
         color: const  Color(0xff212529).withOpacity(0.07), 
         borderRadius: BorderRadius.circular(10)),
        height: 80,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors,
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(INFO.image),
            ),
            Padding(
              padding:  EdgeInsets.only( top: 20 , ),
              child: Column(
                children: [
                  Text(
                    INFO.jpName,
                    style: TextStyle(
                        color: Color(0xff072ac8),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    INFO.enName,
                    style:const  TextStyle(
                        color: Color(0xff072ac8),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
           
            Padding(
              padding: EdgeInsets.only(left: 105),
              child: IconButton(
                onPressed: ()  {
                  final player = AudioPlayer();
                  player.play(AssetSource(INFO.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Color(0xff072ac8),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}