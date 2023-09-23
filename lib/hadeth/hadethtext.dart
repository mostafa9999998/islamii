import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hadethdetails extends StatelessWidget {
  String content;
  Hadethdetails({required this.content});
  @override
  Widget build(BuildContext context) {
    return  Text(
      '$content',
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
