import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/Models.dart';

class Pharesesitem extends StatelessWidget {
  const Pharesesitem({required this.phreses});
  final PhresesModel phreses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: const Color(0xff212529).withOpacity(0.07),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      phreses.jbname,
                      style: const TextStyle(
                        color: Color(0xff072ac8),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      phreses.enname,
                      style: const TextStyle(
                        color: Color(0xff072ac8),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(phreses.sound));
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