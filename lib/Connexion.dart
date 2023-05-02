import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

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
            SizedBox(height: 5,),
            Image.asset('assets/logo.png', height: 200.0, width: 200.0,
              //alignment: Alignment.topCenter,
            ),

            Center(
              child: Text("Connexion",
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
                Navigator.pushReplacementNamed(context, "/menumarchand");
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
                padding: const EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: const Text('Se connecter',
                    style: TextStyle(fontSize: 20, color: Colors.white)

                ),

              ),
            ),

            // mot de passe oublié
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
                padding: const EdgeInsets.all(8.0),
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/motdepasseoublie");
              },
              child: const Text('Mot de passe oublié?'),
            ),

            Row(
              children: [
           Text("Vous n'avez pas de compte?",),

            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/formulaire");
              },
              child: const Text('Inscrivez-vous'),
            ),
              ],
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

       /* children: <Widget>[
          TextButton(
              onPressed: () {},
              child: Text(
                  'Mot de passe oublié?',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                      color: Color(0xff4c505b)
                  )
              )
          ),
        ],*/

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
