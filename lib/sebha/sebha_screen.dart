import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Sebha_screen extends StatefulWidget {

  @override
  State<Sebha_screen> createState() => _Sebha_screenState();
}

class _Sebha_screenState extends State<Sebha_screen> {
  int counter=0;
  String sebhaname ='سبحان الله';
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          height: 250,
          width: 250,
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.06,
            horizontal: MediaQuery.of(context).size.width*0.03,
          ),
          child: Image(image: AssetImage('assets/images/sebha.png')),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.02,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          child: Center(child: Text(AppLocalizations.of(context)!.sebhanum,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),),
        ),
        Center(
          child: Container(
            width: 60,
            height:60 ,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffB7935F)
            ),
            child:Center(child: Text('$counter',style: TextStyle(fontSize: 25,color: Color(0xff242424),),)),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.05),
            child: ElevatedButton(
              child: Text('$sebhaname',style: TextStyle(color: Colors.white,fontSize:25)),
              style:ElevatedButton.styleFrom(
                backgroundColor:Color(0xffB7935F) ,
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
