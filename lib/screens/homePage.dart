import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tuko/component/catagory.dart';
import 'package:tuko/screens/Colorspage.dart';
import 'package:tuko/screens/PharesesPage.dart';
import 'package:tuko/screens/familymembers.dart';
import 'package:tuko/screens/numberspage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: AppBar(
            shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(500) ,),
            ),
            shadowColor: Colors.black,
            centerTitle: true,
            elevation: 15,
            title: const Text(
              "Toku App",
              style: TextStyle(color: Colors.white, fontFamily: 'catcafe'),
            ),
            backgroundColor: Color(0xff072ac8),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/Graduation.gif",
            height: 300,
          ),
          const Divider(
            height: 10,
            indent: 70,
            endIndent: 70,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Catagory(
                text: "Numbers",
                OnTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Numberspage();
                  }));
                },
              ),
                        const Divider(
            height: 10,
            indent: 70,
            endIndent: 70,
          ),
              Catagory(
                text: "Colors",
                OnTap: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (BuildContext context){
                    return Colorspage();
                  })
                  );
                },
              ),
                        const Divider(
            height: 10,
            indent: 70,
            endIndent: 70,
          ),
              Catagory(
                text: "Family members",
                OnTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Familymembers();
                  }
                  )
                  );
                },
              ),
                        const Divider(
            height: 10,
            indent: 70,
            endIndent: 70,
          ),
              Catagory(
                text: "Pharses",
                OnTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Pharesespage();
                  }
                  )
                  );
                },
              ),

            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
