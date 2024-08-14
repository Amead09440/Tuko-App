import 'package:flutter/material.dart';
import 'package:tuko/component/Familyitems.dart';
import 'package:tuko/component/CustomAppbar.dart';
import 'package:tuko/models/Models.dart';

class Familymembers extends StatelessWidget {
  Familymembers({super.key});

  final List<Familys> members = const [
    //Mother 
    Familys(
      enName: "Mom",
      jpName: "haha",
      image: "assets/images/family_members/family_mother.png",
      sound: "sounds/family_members/mother.wav",
    ),
    //Father
    Familys(
        sound: "sounds/family_members/father.wav",
        enName: "Dad",
        jpName: "chichi",
        image: "assets/images/family_members/family_father.png"),
    // Grand Mother 
    Familys(
        sound: "sounds/family_members/grand mother.wav",
        enName: "GrandMother",
        jpName: "sobo",
        image: "assets/images/family_members/family_grandmother.png"
        ),
    //Grand Father 
    Familys(
        sound: "sounds/family_members/grand father.wav",
        enName: "GrandFather",
        jpName: "ojiisan",
        image: "assets/images/family_members/family_grandfather.png"
        ),
    // Younger brother
    Familys(
        sound: "sounds/family_members/younger brohter.wav",
        enName: "younger brother",
        jpName: "otôto",
        image: "assets/images/family_members/family_younger_brother.png"
        ),
    //Younger Sister 
    Familys(
        sound: "sounds/family_members/younger sister.wav",
        enName: "Younger Sister ",
        jpName: "imôto",
        image: "assets/images/family_members/family_younger_sister.png"
        ),
    //daughter 
    Familys(
        sound: "sounds/family_members/daughter.wav",
        enName: "Daughter",
        jpName: "musume",
        image: "assets/images/family_members/family_daughter.png"
        ),
    //Son
    Familys(
        sound: "sounds/family_members/son.wav",
        enName: "Son",
        jpName: "musuko",
        image: "assets/images/family_members/family_son.png"
        ),
    //older Sister
    Familys(
        sound: "sounds/family_members/older sister.wav",
        enName: "Older Sister",
        jpName: "ane",
        image: "assets/images/family_members/family_older_sister.png"
        ),
    //older brother 
    Familys(
        sound: "sounds/family_members/older bother.wav",
        enName: "Older Brother",
        jpName: "oniisan",
        image: "assets/images/family_members/family_older_brother.png"
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: CustomAppBar(PageName: "Family Members", BarColor: Color(0xfff5bd1f),)),
        body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return Familyitems(member: members[index] , Colors: Color(0xffffe747),);
          },
        ));
  }
}
