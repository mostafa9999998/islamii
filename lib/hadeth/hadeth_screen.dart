import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/hadeth/hadethscreen_details.dart';

class Hadeth_screen extends StatelessWidget {
  List<String> hadethname = List.generate(50, (index) => '${index+1}حديث رقم ');

  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image(
            image: AssetImage('assets/images/hadeth_logo.png'),
          ),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text('Hadeeth Name',style: Theme.of(context).textTheme.titleMedium,),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (conext,index){
              return Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Hadethscreen_details.hadeethroute,
                      arguments: Hadethindex(index: index,hadeth_name: hadethname[index])
                      );
                    },
                      child: Text(hadethname[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),)));
            } ,
            itemCount: hadethname.length,
          ),
        )
      ],
    );
  }


}

class Hadethindex{
   String hadeth_name ;
  int index;
  Hadethindex({required this.index,required this.hadeth_name});
}