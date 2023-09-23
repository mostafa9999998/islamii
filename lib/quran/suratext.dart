import 'package:flutter/material.dart';
import 'package:islamii/quran/suradetails_screen.dart';

class Suraname extends StatelessWidget {
  String name = '';
  int index;
  Suraname({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Sura.surapage,
        arguments: Suraargs(index: index, name: name)
        );
        },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
