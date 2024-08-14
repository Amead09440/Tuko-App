import 'package:flutter/material.dart';
import 'package:tuko/models/Models.dart';
import 'package:audioplayers/audioplayers.dart';

class Familyitems extends StatelessWidget {
  const Familyitems({super.key,required this.member , required this.Colors});
  final Familys member;  
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
              child: Image.asset(member.image),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    member.jpName,
                    style: TextStyle(
                        color: Color(0xff072ac8),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    member.enName,
                    style:const  TextStyle(
                        color: Color(0xff072ac8),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 125),
              child: IconButton(
                onPressed: ()  {
                  final player = AudioPlayer();
                  player.play(AssetSource(member.sound));
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