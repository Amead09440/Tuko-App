import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/Models.dart';

class Item extends StatelessWidget {
  const Item({ required this.number , required this.colorss});
  final Numbers number;
  final Color colorss ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin:const  EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
        //   boxShadow: [
        //   BoxShadow(
        //       color: Colors.grey.withOpacity(1),
        //       blurRadius: 7,
        //       offset: Offset(8, 8))
        // ],
         color: const  Color(0xff212529).withOpacity(0.07), 
         borderRadius: BorderRadius.circular(10)),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: colorss,
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(number.image),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.jpName,
                    style:const  TextStyle(
                        color: Color(0xff072ac8),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    number.enName,
                    style: TextStyle(
                        color: Color(0xff072ac8),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            // const Spacer(
            //   flex: 10,
            // ),
            Padding(
              padding: EdgeInsets.only(left: 160),
              child: IconButton(
                onPressed: ()  {
                  final player = AudioPlayer();
                  player.play(AssetSource(number.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Color(0xff072ac8),
                ),
              ),
            ),
            // const Spacer(
            //   flex: 1,
            // )
          ],
        ),
      ),
    );
  }
}
