import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/hadeth/hadeth_screen.dart';
import 'package:islamii/hadeth/hadethtext.dart';

class Hadethscreen_details extends StatefulWidget {
  static String hadeethroute='hadeeth';

  @override
  State<Hadethscreen_details> createState() => _Hadethscreen_detailsState();
}

class _Hadethscreen_detailsState extends State<Hadethscreen_details> {
  String hadethh='';
  bool flag= true;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadethindex;
    if (flag ==true){
      fileload(args.index);}
    return Stack(
      children: [
        Image(image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(

          appBar: AppBar(
            title: Text('${args.hadeth_name}', style: Theme
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
            ),

            child: ListView.builder(
              itemBuilder: (context, index) {
                return Hadethdetails(content: hadethh);
              },
              itemCount: hadethh.length,
            ),
          ),
        )
      ],
    );
  }
  void fileload(int index) async {
    String content = await rootBundle.loadString(
        'assets/file/ahadeth.txt');
    List<String> lines = content.split('#');
    hadethh = lines[index];
    setState(() {
    });
    flag=false;
  }
}
