// ignore_for_file: sort_child_properties_last

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Menumarchand extends StatefulWidget {

  @override
  State<Menumarchand> createState() => _MenumarchandState();
}

class _MenumarchandState extends State<Menumarchand> {
    bool val1 = false;
    bool val2 = false;

    void change1(bool s){
      setState(() {
        val1 = s;
      });
    }
  // Attitudes
  List <BottomNavigationBarItem> _item = [];
  int _id=0;
  String _valeur='';


  void initState(){
    super.initState();
    //_item = new List();
    _item.add(BottomNavigationBarItem(icon: Icon(Icons.airport_shuttle,color: Colors.white,), label: 'Stationnement'));
    _item.add(BottomNavigationBarItem(icon: Icon(Icons.perm_contact_cal_rounded,color: Colors.white,), label: 'Profile'));
    _item.add(BottomNavigationBarItem(icon: Icon(Icons.logout,color: Colors.white,), label : 'Déconnexion'));

  }

  // Méthodes
  // Image coin supérieur left
  Widget picturetop(){
    return Container(

     // body: Column(),
      height: 230.0,
      width: 400.0,
      decoration: BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/hautad.png"),
            fit: BoxFit.cover,
            alignment: Alignment.center),
      ),

      //image profile user
     /* child: new Container(
      // height: 10.0,
       // width: 2.0,
        decoration: new BoxDecoration(
          image: DecorationImage(
            image: new AssetImage(
                'assets/aude.png'),
            fit: BoxFit.fill,
          ),
          borderRadius:
          BorderRadius.circular(3000.0),
        ),
      ),*/

      child: Align(
        //Je veux bien positionner l'image dans le petit cercle
      // padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
        //padding: EdgeInsets.all(8.0),
      //margin: EdgeInsets.only(left: 5.0),

        alignment: Alignment(0.1, 1.6),
        child: CircleAvatar(
          //ancienne image
          /*radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/aude.png',),
          //height: 10.0, width: 250.0,*/

          //image avec bordure
          radius: 56,
          backgroundColor: Color.fromRGBO(61, 223, 194, 1),
          child: Padding(
            padding: const EdgeInsets.all(10),
           child: ClipRRect(
              borderRadius: new BorderRadius.circular(80.0),
              child: Image(
                fit: BoxFit.fill,
                //radius: 100.0,
                image: AssetImage('assets/aude.png'),
                width: 180.0,
                height: 180.0,
              ),
            ),// Border radius
            //child: ClipOval(child: Image.network('imageUrl')),
          ),
        ),
      ),
    );
  }

  // Contenu form
  Widget content(){
    return Container(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 280,),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {

                    //Navigator.pushReplacementNamed(context, "/connexion");
                    showDialog(

                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            //exemple 1 dialogbos et ok seulement
                            content: Text('Date'),

                            // bouton on/off
                            //shape: Switch(value: val1, onChanged: change1, activeColor: Colors.blue),
                            //child: Switch(),

                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],

                            //exemple 2
                           /*content: LiteRollingSwitch(
                            // child: Text ("Connexion"),
                             value: true,
                             colorOn:Colors.greenAccent,
                             colorOff: Colors.blue,
                            // iconOn: Icons.done,
                             //iconOff: Icons.add_box_rounded,
                             onChanged: (bool position){
                               print("The button is $position");
                             },
                             onDoubleTap: (){
                               // code
                              },
                             onTap: (){
                               // code
                             },
                             onSwipe: (){
                               // code
                             },
                           ),*/

                          );

                        });
                    },

                  child: Image.asset('assets/voyagemenu.png'),

                ),

                //deux
                GestureDetector(
                  onTap: () {Navigator.pushReplacementNamed(context, "/connexion");},
                  child: Image.asset('assets/voyagecmenu.png'),
                ),
                GestureDetector(
                  onTap: () {Navigator.pushReplacementNamed(context, "/connexion");},
                  child: Image.asset('assets/pannemenu.png'),
                ),
              ],
            ),
            /*
            SizedBox(height: 30,),
            Text("Premier Mem $_valeur", style: TextStyle(color: Colors.greenAccent, fontSize: 21),), // TEST
            */
            //deuxieme ligne
            SizedBox(height: 40,),

            Row(
              children: <Widget>[

                GestureDetector(
                  onTap: () {
                    //Navigator.pushReplacementNamed(context, "/connexion");
                    showModalBottomSheet(
                        context: context,
                        isDismissible: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)
                          ),
                        ),
                        builder: ((context) {
                           return Container();
                    }));
          },
                  child: Image.asset('assets/assurancemenu.png'),
                ),
                GestureDetector(
                   child: Image.asset('assets/infomenu.png'),
                ),
                GestureDetector(
                  onTap: () {Navigator.pushReplacementNamed(context, "/connexion");},
                  child: Image.asset('assets/maintmenu.png'),
                ),


              ],
            ),
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

  Widget picturebottom(){
    return Container(
      height: 50.0,
      width: 400.0,

      padding: const EdgeInsets.symmetric(
        horizontal: 50.0,
        vertical: 50.0,

      ),

        //icone bas de menu
      child: Row(
        children: <Widget>[
          Expanded(
            /*  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/connexion");
                  },*/
            child: Image.asset('assets/stationnement.png'),
          ),
          Expanded(
            child: Image.asset('assets/profil.png'),
          ),
          Expanded(
            child: Image.asset('assets/deconnexion.png'),
          ),


        ],
      ),


      decoration: BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/basmenu.png"),
            fit: BoxFit.cover, scale: 30.0,
            alignment: Alignment.bottomCenter),
      ),

      // icones bas pages


    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: <Widget> [
          picturetop(),
          /*Align(
            alignment: Alignment.bottomCenter,
            child: picturebottom(),
          ),*/
          content(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _item,
        currentIndex: _id,
        backgroundColor: Color.fromRGBO(61, 223, 194, 1),
        onTap: (int item){
          setState((){
            _id = item;

            _valeur = 'clique ${_id.toString()}';
          }
          );
        },
      ),
    );

  }
}
