import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Radioscreen extends StatelessWidget {
  const Radioscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.1,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          child: Image(image: AssetImage('assets/images/radio_image.png')),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.04,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          child: Center(child: Text(AppLocalizations.of(context)!.eza3a,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.04,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          child: Image(image: AssetImage('assets/images/radioplayer.png')),
        ),
      ],
    );
  }
}

