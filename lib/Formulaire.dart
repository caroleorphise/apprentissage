import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Formulaire extends StatefulWidget {

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {

  // Image coin supérieur left
  Widget picturelefttop(){
    return Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/page.png"), fit: BoxFit.cover),
      ),

     /* child:Divider(
        //color: Color(0xfff8a9c5),
        thickness: 50,
      ),*/

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
            SizedBox(height: 20,),
            Image.asset('assets/logo.png', height: 200.0, width: 200.0,
              //alignment: Alignment.topCenter,
              ),

            Center(
              child: Text("Inscription",
                  style: Theme.of(context).textTheme.headline5),
            ),
            //ligne sous Inscription
            Image.asset('assets/trait.png', height: 10.0, width: 250.0),

            //nom
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                  //fillColor: Colors.blue,
                  labelText: 'Nom d\'utilisateur',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue))),
            ),

            //mail
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blue,
                    size: 25,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)),
            ),

               //mdp
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                    size: 25,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),)),
              obscureText: true,
            ),

            // Bouton
            SizedBox(height: 30.0),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/connexion");
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
                padding: const EdgeInsets.fromLTRB(110, 10, 110, 10),
                child: const Text('S\'inscrire',
                    style: TextStyle(fontSize: 20, color: Colors.white)

                ),
              ),
            ),

              /*   Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF44EEB2),
                          Color(0xFF40E5BC),
                          Color(0xFF3CDEC4),
                        ],
                      ),
                    ),
                  ),
                ),

                TextButton(
                  style: TextButton.styleFrom(
                    color: Colors.white,
                    //padding: const EdgeInsets.all(5),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('S\'inscrire'),
                ), */

                 /*  TextButton(
                  child: Text(
                    'S\'inscrire',
                    style: TextStyle(
                    fontSize: 15.0,
                      onPressed: () {},
                    ),
                  ),
                  style: ButtonStyle(

                      //backgroundColor: MaterialStateProperty.all(Colors.green)),

                ), */


          ],
        ),

      ),


    );
  }
  // Image coin inférieur bottom
  Widget picturerightbottom(){
    return Container(
      height: 120.0,
      width: 120.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 50.0,
        vertical: 50.0,
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

          content(),
          Align(
            alignment: Alignment.bottomRight,
            child: picturerightbottom(),
          ),
        ],
      ),
    );
  }
}
