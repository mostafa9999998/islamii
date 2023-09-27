
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamii/hadeth/hadethscreen_details.dart';
import 'package:islamii/home.dart';
import 'package:islamii/provider/sitting.dart';
import 'package:islamii/quran/suradetails_screen.dart';
import 'package:islamii/thems.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
       ChangeNotifierProvider(
           create: (context)=>Settingprovider(),
           child: Myapp()));
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Settingprovider provider=Provider.of(context);
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
      locale: Locale(provider.currentlocal),
      theme: Mytheme.lightmode,
      darkTheme:Mytheme.darkmode ,
      themeMode: provider.mode,
    );
  }
}

