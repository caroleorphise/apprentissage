import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Profilmodifier extends StatefulWidget {

  @override
  State<Profilmodifier> createState() => _ProfilmodifierState();
}

class _ProfilmodifierState extends State<Profilmodifier>{
  @override

  TextEditingController GJOSEPH = new TextEditingController();
  TextEditingController Joseph = new TextEditingController();
  TextEditingController masculin = new TextEditingController();
  TextEditingController numero = new TextEditingController();
  TextEditingController type = new TextEditingController();
  @override
  void iinitState() {
    GJOSEPH.text = ""; //innitail value of text field
    Joseph.text = "";
    // 20ans.toString = "";
    masculin.text = "";
    numero.text = "";
    type.text = "";
    super.initState();
  }
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 240,),
            // Text("Profil"),
            // code de la page profil
            TextField(
                enabled: false,
                controller: GJOSEPH,
                decoration: InputDecoration(
                    labelText: "NOM JOSEPH",
                    suffixIcon: Icon(Icons.edit)
                  // icon: Icon(Icons.people), //icon at head of input
                )
            ),

            SizedBox(height: 10,),

            TextField(
                enabled: false,
                controller: Joseph,
                decoration: InputDecoration(
                  // icon: Icon(Icons.lock), //icon at head of input
                  //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                    labelText: "Joseph",
                    suffixIcon: Icon(Icons.edit) //icon at tail of input
                )
            ),

            SizedBox(height: 10,),

            TextField(
                enabled: false,
                controller: masculin,
                decoration: InputDecoration(
                  // icon: Icon(Icons.lock), //icon at head of input
                  //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                    labelText: "Masculin",
                    suffixIcon: Icon(Icons.edit) //icon at tail of input
                )
            ),

            SizedBox(height: 10,),

            TextField(
                enabled: false,
                controller: numero,
                decoration: InputDecoration(
                  // icon: Icon(Icons.lock), //icon at head of input
                  //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                    labelText: "+229 95959595",
                    suffixIcon: Icon(Icons.edit) //icon at tail of input
                )
            ),

            SizedBox(height: 10,),

            TextField(
                enabled: false,
                controller: type,
                decoration: InputDecoration(
                  // icon: Icon(Icons.lock), //icon at head of input
                  //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                    labelText: "Permis Type B",
                    suffixIcon: Icon(Icons.edit) //icon at tail of input
                )
            ),

            SizedBox(height: 30,),

            TextButton(
              onPressed: () {
                //
              },
              // style: TextButton.styleFrom(
              // textColor: Colors.white,

              //padding: const EdgeInsets.all(0.0),),
              //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Color(0xFF44EEB2),
                        Color(0xFF40E5BC),
                        Color(0xFF3CDEC4),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(80.0))),
                padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: const Text('Modifier',
                    style: TextStyle(fontSize: 20, color: Colors.white)

                ),

              ),
            ),


          ],
        ),
      ),
    );
  }
}