import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islamii/hadeth/hadeth_screen.dart';
import 'package:islamii/quran/sura_screen.dart';
import 'package:islamii/radio/radio_screen.dart';
import 'package:islamii/sebha/sebha_screen.dart';

class Home extends StatefulWidget {
 static String homescreen ='home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image(image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
        ),
        Scaffold(

          appBar: AppBar(
            title: Text('Islami',style: Theme.of(context).textTheme.titleLarge),
          ),

          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),


            child: BottomNavigationBar(
              currentIndex: currentindex,
              onTap: (index){
                currentindex=index;
                setState(() {
                });
              },
              items: [
                BottomNavigationBarItem(
                     icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png')
                  ),
                  label: 'radio'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icon_sebha.png')
                    ),
                    label: 'tasbeh'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icon_hadeth.png')
                    ),
                    label: 'ahadeth'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icon_quran.png')
                    ),
                    label: 'quran'
                )
              ],
            ),
          ),

          body: screens[currentindex]
        )
      ],
    );
  }
 List<Widget> screens =[
   Radioscreen(),Sebha_screen(),Hadeth_screen(),Surascreen()
 ];
}

