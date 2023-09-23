import 'package:flutter/material.dart';
import 'package:islamii/quran/suradetails_screen.dart';

class Suradetails extends StatelessWidget {
 String content;
 int index;
      Suradetails({required this.content,required this.index});
  @override
  Widget build(BuildContext context) {
    return  Text(
    '$content(${index+1})',
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
