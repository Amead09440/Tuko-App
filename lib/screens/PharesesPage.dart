import 'package:flutter/material.dart';
import 'package:tuko/component/CustomAppbar.dart';
import 'package:tuko/component/Pharesesitem.dart';
import 'package:tuko/models/Models.dart';

class Pharesespage extends StatelessWidget {
  final List<PhresesModel> info = const [
    PhresesModel(
  sound: 'sounds/phrases/are_you_coming.wav',
  jbname: "Kimasu ka?",
  enname: "Are you coming?"),
PhresesModel(
  sound: "sounds/phrases/yes_im_coming.wav",
  jbname: "Hai, kimasu",
  enname: "Yes, I'm coming"),
PhresesModel(
  sound: "sounds/phrases/where_are_you_going.wav",
  jbname: "Doko e iku no desu ka?",
  enname: "Where are you going?"),
PhresesModel(
  sound: "sounds/phrases/how_are_you_feeling.wav",
  jbname: "Go kibun wa ikagadesu ka?",
  enname: "How are you feeling?"),
PhresesModel(
  sound: "sounds/phrases/what_is_your_name.wav",
  jbname: "Anata no namae wa nandesu ka?",
  enname: "What is your name?"),
PhresesModel(
  sound: "sounds/phrases/i_love_anime.wav",
  jbname: "Anime ga daisukidesu",
  enname: "I love anime"),
PhresesModel(
  sound: "sounds/phrases/i_love_programming.wav",
  jbname: "Puroguramingu ga daisukidesu",
  enname: "I love programming"),
PhresesModel(
  sound: "sounds/phrases/programming_is_easy.wav",
  jbname: "Puroguramingu wa kantandesu",
  enname: "Programming is easy"),
PhresesModel(
  sound: "sounds/phrases/dont_forget_to_subscribe.wav",
  jbname: "Kōdoku suru koto o wasurenaide kudasai",
  enname: "Don't forget to subscribe!"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child:
              CustomAppBar(PageName: "Phareses", BarColor: Color(0xffef233c))),
      body: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Pharesesitem(
            phreses: info[index],
          );
        },
      ),
    );
  }
}
