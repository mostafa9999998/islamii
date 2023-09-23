import 'package:flutter/material.dart';
import 'package:islamii/hadeth/hadethscreen_details.dart';
import 'package:islamii/home.dart';
import 'package:islamii/quran/suradetails_screen.dart';
import 'package:islamii/thems.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.homescreen,
      routes: {
      Home.homescreen : (_)=>Home(),
        Sura.surapage :(_)=> Sura(),
        Hadethscreen_details.hadeethroute:(_)=>Hadethscreen_details(),
      },
      theme: Mytheme.lightmode,
    );
  }
}

