import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:islamii/hadeth/hadeth_screen.dart';
import 'package:islamii/image%20path%20them.dart';
import 'package:islamii/provider/sitting.dart';
import 'package:islamii/quran/sura_screen.dart';
import 'package:islamii/radio/radio_screen.dart';
import 'package:islamii/sebha/sebha_screen.dart';
import 'package:islamii/setting/setting%20details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class Home extends StatefulWidget {
 static String homescreen ='home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 int currentindex=0;

  @override
  Widget build(BuildContext context) {
    Settingprovider provider= Provider.of(context);
    return  Stack(
      children: [
        Image(image: AssetImage((provider.isdark()? Imagepath.darkbackground : Imagepath.lightbackground)),
          fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
        ),
        Scaffold(

          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami,style: Theme.of(context).textTheme.titleLarge),
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
                        AssetImage('assets/images/icon_quran.png')
                    ),
                    label: AppLocalizations.of(context)!.quran
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icon_hadeth.png')
                    ),
                    label: AppLocalizations.of(context)!.hadeeth
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icon_sebha.png')
                    ),
                    label: AppLocalizations.of(context)!.sebha
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icon_radio.png')
                    ),
                    label: AppLocalizations.of(context)!.radio
                ),
                BottomNavigationBarItem(
                    icon:Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.setting
                ),
              ],
            ),
          ),

          body: screens[currentindex]
        )
      ],
    );
  }
 List<Widget> screens =[
 Surascreen(),Hadeth_screen(),Sebha_screen(),Radioscreen(),Settingdetails()
 ];
}

