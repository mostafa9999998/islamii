import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/quran/suratextdetails.dart';
import 'package:islamii/thems.dart';
import 'package:provider/provider.dart';

import '../image path them.dart';
import '../provider/sitting.dart';

class Sura extends StatefulWidget {
  static String surapage = 'surapage';

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  List<String> versus = [];

  @override
  Widget build(BuildContext context) {
    Settingprovider provider= Provider.of(context);
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Suraargs;
    if (versus.length==0){
    fileload(args.index);}
    return Stack(
      children: [
        Image(image: AssetImage((provider.isdark()? Imagepath.darkbackground : Imagepath.lightbackground)),
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(

          appBar: AppBar(
            title: Text('${args.name}', style: Theme
                .of(context)
                .textTheme
                .titleLarge),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width*0.06,
              vertical: MediaQuery.of(context).size.height*0.1 ,
            ),
            decoration: BoxDecoration(
                color: (provider.isdark()?Mytheme.darkprimary: Mytheme.whitecolor ),
                borderRadius: BorderRadius.circular(25)
            ),

            child: versus.length==0?
            Center(child: CircularProgressIndicator()):
            ListView.builder(
                itemBuilder: (context, index) {
                  return Suradetails(content: versus[index],index: index);
                },
                itemCount: versus.length,
            ),
          ),
        )
      ],
    );
  }

  void fileload(int index) async {
    String content = await rootBundle.loadString(
        'assets/file/${index + 1}.txt');
    List<String> lines = content.split('\n');
    versus = lines;
    setState(() {

    });
  }
}
class Suraargs{
  int index;
  String name;
  Suraargs({required this.index,required this.name});
}
