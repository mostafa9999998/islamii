import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/thems.dart';
import 'package:provider/provider.dart';

import '../image path them.dart';
import '../provider/sitting.dart';
class Sebha_screen extends StatefulWidget {

  @override
  State<Sebha_screen> createState() => _Sebha_screenState();
}

class _Sebha_screenState extends State<Sebha_screen> {
  int counter=0;
  String sebhaname ='سبحان الله';
  @override
  Widget build(BuildContext context) {
    Settingprovider provider= Provider.of(context);
    return Column(
      children: [
        Container(
          height: 250,
          width: 250,
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.06,
            horizontal: MediaQuery.of(context).size.width*0.03,
          ),
          child: Image(image: AssetImage((provider.isdark()? Imagepath.darhsebha : Imagepath.lightsebha))),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.02,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          child: Center(child: Text(AppLocalizations.of(context)!.sebhanum,style: Theme.of(context).textTheme.bodyLarge,),),
        ),
        Center(
          child: Container(
            width: 60,
            height:60 ,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: (provider.isdark()? Mytheme.darkprimary : Mytheme.primary),
            ),
            child:Center(child: Text('$counter',style: TextStyle(fontSize: 25,color: (provider.isdark()? Mytheme.whitecolor : Mytheme.blackcolor),),)),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.05),
            child: ElevatedButton(
              child: Text('$sebhaname',style: TextStyle(color: Colors.white,fontSize:25)),
              style:ElevatedButton.styleFrom(
                backgroundColor:(provider.isdark()? Mytheme.yellowcolor : Mytheme.primary) ,
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(25))),
              onPressed: () {
                addcount();
              },
            ),
          )
        )
      ],
    );
  }

 void addcount(){
    if (counter<33){
      sebhaname='سبحان الله';
    counter++;}
    else if(counter>=33&&counter<66){
      sebhaname='الحمد لله';
      counter++;
    }else if (counter>=66&&counter<99){
      sebhaname='الله أكبر';
      counter++;
    }else if (counter==99){
      sebhaname='سبحان الله';
      counter=0;
    }
    setState(() {
    });
 }
}
