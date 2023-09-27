import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../image path them.dart';
import '../provider/sitting.dart';
class Radioscreen extends StatelessWidget {
  const Radioscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Settingprovider provider= Provider.of(context);
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
          child: Center(child: Text(AppLocalizations.of(context)!.eza3a,style: Theme.of(context).textTheme.bodyLarge,),),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.04,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          child: Image(image: AssetImage((provider.isdark()? Imagepath.darkradio : Imagepath.lightradio))),
        ),
      ],
    );
  }
}

