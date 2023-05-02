import 'package:flutter/material.dart';
//import './themes/color.dart';
import 'package:apprentissage/Formulaire.dart';
import 'package:apprentissage/Connexion.dart';
import 'package:apprentissage/Motdepasseoublie.dart';
import 'package:apprentissage/Mdpotp.dart';
import 'package:apprentissage/Mdpnouv.dart';
import 'package:apprentissage/Menumarchand.dart';
import 'package:apprentissage/Voyagehistorique.dart';
import 'SplashScreen.dart';

void main() => runApp(
    MaterialApp(
      home: MyApp(),
    )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
          title: "SIGT",
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder>{
            '/splash': (BuildContext context) => new SplashScreen(),
            '/formulaire': (BuildContext context) => new Formulaire(),
            '/connexion': (BuildContext context) => new Connexion(),
            '/motdepasseoublie': (BuildContext context) => new Motdepasseoublie(),
            '/mdpotp': (BuildContext context) => new Mdpotp(),
            '/mdpnouv': (BuildContext context) => new Mdpnouv(),
            '/menumarchand': (BuildContext context) => new Menumarchand(),
            '/voyagehistorique': (BuildContext context) => new Voyagehistorique(),
          },
          home: SplashScreen(),
      ),
    );
  }
}
