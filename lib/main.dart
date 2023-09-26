import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamii/hadeth/hadethscreen_details.dart';
import 'package:islamii/home.dart';
import 'package:islamii/quran/suradetails_screen.dart';
import 'package:islamii/thems.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.homescreen,
      routes: {
      Home.homescreen : (_)=>Home(),
        Sura.surapage :(_)=> Sura(),
        Hadethscreen_details.hadeethroute:(_)=>Hadethscreen_details(),
      },
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale('ar'),
      theme: Mytheme.lightmode,
    );
  }
}

