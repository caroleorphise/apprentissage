import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
            // logo
            height: 250.0,
            width: 250.0,
            decoration: BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/logo.png"), alignment: Alignment.center),
            ),
          ),

          //background splashscreen
          SizedBox.expand(
            child: Image(
              image: AssetImage('assets/splash.png'),
              height:  700.0,
              width: 200.0,
              fit : BoxFit.cover,
            ),
          ),
          //SizedBox(height: 250,),

          //bouton se connecter splash
          Align(
            alignment: Alignment(0.1, 0.3),
            child:
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                padding: const EdgeInsets.fromLTRB(103, 10, 103, 10),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/formulaire");
              },
              child: Text('S\'inscrire',
              style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ),

          //bouton s'inscrire splash
          Align(
            alignment: Alignment(0.1, 0.6),
            child:
            ElevatedButton(
              style: ElevatedButton.styleFrom(
               // primary: Colors.white,
               // backgroundColor: Colors.greenAccent,
                backgroundColor: Color.fromRGBO(61, 223, 194, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                padding: const EdgeInsets.fromLTRB(90, 10, 90, 10),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/connexion");
              },
              child: Text('Se connecter',
                  style: TextStyle(fontSize: 19, color: Colors.blue)),
            ),
          ),


        ],
      ),
    );
  }
}
