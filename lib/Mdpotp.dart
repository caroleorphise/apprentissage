import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Mdpotp extends StatefulWidget {

  @override
  State<Mdpotp> createState() => _MdpotpState();
}

class _MdpotpState extends State<Mdpotp> {

  // Image coin supérieur left
  Widget picturelefttop(){
    return Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/page.png"), fit: BoxFit.cover),
      ),


    );

  }


  // Contenu form
  Widget content(){
    return Container(
      //height: double.infinity,

      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 80,),

            Center(
              child: Text("Réinitialisation",
                  style: Theme.of(context).textTheme.headline5),
            ),
            //ligne sous Inscription
            Image.asset('assets/trait.png', height: 15.0, width: 600.0),

            //image enveloppe
            Image.asset('assets/mdpoublie.png', height: 220.0, width: 220.0,
              //alignment: Alignment.topCenter,
            ),

            Text("Veuillez entrer le code reçu par mail \n pour générer un nouveau \n mot de passe",
              style: TextStyle(fontSize: 17,),
              textAlign: TextAlign.center,

            ),


            //code otp
            SizedBox(height: 40.0),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Code de validation',
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.blue,
                    size: 25,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)),
            ),


            // Bouton
            SizedBox(height: 30.0),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/mdpnouv");
              },
              // style: TextButton.styleFrom(
              // textColor: Colors.white,

              //padding: const EdgeInsets.all(0.0),),
              //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF44EEB2),
                        Color(0xFF40E5BC),
                        Color(0xFF3CDEC4),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(80.0))),
                padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                child: const Text('Confirmer',
                    style: TextStyle(fontSize: 20, color: Colors.white)

                ),

              ),
            ),





          ],


        ),



      ),


    );
  }
  Widget picturerightbottom(){
    return Container(
      height: 120.0,
      width: 120.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/pagee.png"), fit: BoxFit.cover, scale: 80.0),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget> [
          picturelefttop(),
          Align(
            alignment: Alignment.bottomRight,
            child: picturerightbottom(),
          ),
          content(),

        ],
      ),
    );
  }
}
