import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_switch/flutter_switch.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Menumarchand extends StatefulWidget {

  @override
  State<Menumarchand> createState() => _MenumarchandState();
}

class _MenumarchandState extends State<Menumarchand> {
  // pour le tableau de voyage historique

  bool val2 = false;
  bool isChecked = false;

  //bool _switchValue = true;
  bool isSwitched = false;

  bool val1 = false;

  void change1(bool s) {
    setState(() {
      val1 = s;
    });
  }

    // Attitudes
    List <BottomNavigationBarItem> _item = [];
    int _id = 0;
    String _valeur = '';

   //Pour faire le menu de bas
    void initState() {
      super.initState();
      //_item = new List();
      _item.add(BottomNavigationBarItem(
          icon: Icon(Icons.airport_shuttle, color: Colors.white,),
          label: 'Stationnement'));
      _item.add(BottomNavigationBarItem(
          icon: Icon(Icons.perm_contact_cal_rounded, color: Colors.white,),
          label: 'Profile'));
      _item.add(BottomNavigationBarItem(
          icon: Icon(Icons.logout, color: Colors.white,),
          label: 'Déconnexion'));
    }

    //pour l'interface de profil

  TextEditingController GJOSEPH = TextEditingController();
  TextEditingController Joseph = TextEditingController();
  TextEditingController masculin = TextEditingController();
  TextEditingController numero = TextEditingController();
  TextEditingController type = TextEditingController();
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

    // Méthodes
    // Image coin supérieur left
    Widget picturetop() {
      return Container(

        // body: Column(),
        height: 230.0,
        width: 400.0,
        decoration: BoxDecoration(
          image: new DecorationImage(image: new AssetImage("assets/hautad.png"),
              fit: BoxFit.cover,
              alignment: Alignment.center),
        ),

        child: Align(
          alignment: Alignment(0.1, 1.6),
          child: CircleAvatar(
            //image avec bordure
            radius: 56,
            backgroundColor: Color.fromRGBO(61, 223, 194, 1),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(80.0),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/aude.png'),
                  width: 180.0,
                  height: 180.0,
                ),
              ), // Border radius
            ),
          ),
        ),
      );
    }

    // Contenu form
    Widget content() {
      return Container(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 280,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });

                      //L'alerte dialog qui s'ouvre au clique du bouton
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 200.0,
                              ),
                              title: Text('Date et Heure'),
                              //exemple 1 dialogbos et ok seulement
                              content: Center(
                                child: Table(
                                  border: TableBorder.all(),
                                  columnWidths: {
                                    0: FractionColumnWidth(0.20),
                                    1: FractionColumnWidth(0.30),
                                    2: FractionColumnWidth(0.25),
                                    3: FractionColumnWidth(0.28),
                                  },
                                  children: [
                                    buildRow(['N°', 'Date et Heure', 'Lieu', 'Frais'], isHeader: true),
                                    buildRow(['1', 'cel 2', 'cel 3', 'cel 4']),
                                  ],
                                ),
                              ),
                              // Le bouton OK qui permet de rester sur le session
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    },

                    child: Image.asset('assets/voyagemenu.png'),

                  ),
                  //deux
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, "/voyageencours");
                    },
                    child: Image.asset('assets/voyagecmenu.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });

                      //L'alerte dialog qui s'ouvre au clique du bouton
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.symmetric(
                                horizontal: 50.0,
                                vertical: 250.0,
                              ),
                              title: Text('Date et Heure'),
                              //exemple 1 dialogbos et ok seulement
                              content: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    // Switch(value: val1, onChanged: change1, activeColor: Colors.blue,),
                                    LiteRollingSwitch(
                                      // child: Text ("Connexion"),
                                      value: false,
                                      colorOn: Colors.blue,
                                      colorOff: Colors.blueGrey,
                                      // iconOn: Icons.done,
                                      //iconOff: Icons.add_box_rounded,
                                      onChanged: (bool position) {
                                        print("The button is $position");
                                      },
                                      onDoubleTap: () {
                                        // code
                                      },
                                      onTap: () {
                                        // code
                                      },
                                      onSwipe: () {
                                        // code
                                      },
                                    ),
                                    //code pour tableau de historique voyage
                                  ],
                                ),
                              ),
                              // Le bouton OK qui permet de rester sur le session
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Image.asset('assets/pannemenu.png'),
                  ),
                ],
              ),
              //deuxieme ligne
              SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });


                      //L'alerte dialog qui s'ouvre au clique du bouton
                      showDialog(

                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 130.0,

                              ),
                              //exemple 1 dialogbos et ok seulement
                              content: Container(

                                height: 1000,
                                child : Column(
                              //Type d'assurance
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 50.0,
                                        width: 250.0,
                                        // color: Colors.transparent,
                                        decoration: BoxDecoration(
                                            //color: Colors.green,
                                            color: Color.fromRGBO(61, 223, 194, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                            padding: EdgeInsets.all(10.0),
                                        child: Text("Type d'assurance",
                                          style: TextStyle(color: Colors.white, fontSize: 14,),),
                                        // textAlign: TextAlign.center,),
                                      )
                                    ],
                                  ),
                                //2
                                  SizedBox(height: 20,),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 50.0,
                                        width: 250.0,
                                        // color: Colors.transparent,
                                        decoration: BoxDecoration(

                                            //color: Colors.blue,
                                            color: Color.fromRGBO(61, 223, 194, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                        padding: EdgeInsets.all(10.0),
                                        child: Text("Assureur",
                                          style: TextStyle(color: Colors.white, fontSize: 14,),),
                                        // textAlign: TextAlign.center,),
                                      )
                                    ],
                                  ),

                                  //3
                                  SizedBox(height: 20,),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 50.0,
                                        width: 250.0,
                                        // color: Colors.transparent,
                                        decoration: BoxDecoration(
                                            //color: Colors.green,
                                            color: Color.fromRGBO(61, 223, 194, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                        padding: EdgeInsets.all(10.0),
                                        child: Text("validité",
                                          style: TextStyle(color: Colors.white, fontSize: 14,),),
                                        // textAlign: TextAlign.center,),
                                      )
                                    ],
                                  ),

                                  //4
                                  SizedBox(height: 20,),

                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 50.0,
                                        width: 250.0,
                                        // color: Colors.transparent,
                                        decoration: BoxDecoration(
                                            //color: Colors.green,
                                            color: Color.fromRGBO(61, 223, 194, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                        padding: EdgeInsets.all(10.0),
                                        child: Text("Date de début",
                                          style: TextStyle(color: Colors.white, fontSize: 14,),),
                                        // textAlign: TextAlign.center,),
                                      )
                                    ],
                                  ),

                                  //5
                                  SizedBox(height: 20,),

                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 50.0,
                                        width: 250.0,
                                        // color: Colors.transparent,
                                        decoration: BoxDecoration(
                                            //color: Colors.green,
                                            color: Color.fromRGBO(61, 223, 194, 1),
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                        padding: EdgeInsets.all(10.0),
                                        child: Text("Date de fin",
                                          style: TextStyle(color: Colors.white, fontSize: 14,),),
                                        // textAlign: TextAlign.center,),
                                      )
                                    ],
                                  ),


                                ]
                                /* */
                                ),
                            ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],

                              );

                              //2 le premier marche mtn mais le second affiche une erreur

                              // Le bouton OK qui permet de rester sur le session
                          });
                    },

                    child: Image.asset('assets/assurancemenu.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });


                      //L'alerte dialog qui s'ouvre au clique du bouton
                      showDialog(

                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 60.0,

                              ),
                              //information véhicule
                              content: DefaultTabController(
                                length: 2,
                                child: Scaffold(
                                    appBar: AppBar(
                                      bottom: TabBar(
                                        isScrollable: true,
                                        tabs: [
                                          Tab(
                                            child: Text("Information"),
                                            icon: Icon(Icons.newspaper_outlined),),

                                          Tab(
                                            child: Text("Visite technique"),
                                            icon: Icon(Icons.car_repair_sharp),
                                          ),
                                        ],),
                                    ),
                                    body: TabBarView(
                                      children: [
                                        Container(width: double.infinity,
                                          //Je dois centrer ce bloc
                                          child: Center(
                                            child : Column(
                                              //Type d'assurance
                                                children: [
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 40.0,
                                                        width: 200.0,
                                                        // color: Colors.transparent,
                                                        decoration: BoxDecoration(
                                                          //color: Colors.green,
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                        padding: EdgeInsets.all(10.0),
                                                        child: Text("N° d'immatriculation",
                                                          style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 11,),),
                                                        // textAlign: TextAlign.center,),
                                                      )
                                                    ],
                                                  ),
                                                  //2
                                                  SizedBox(height: 20,),
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 40.0,
                                                        width: 200.0,
                                                        // color: Colors.transparent,
                                                        decoration: BoxDecoration(

                                                          //color: Colors.blue,
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                        padding: EdgeInsets.all(10.0),
                                                        child: Text("Couleur",
                                                          style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 11,),),
                                                        // textAlign: TextAlign.center,),
                                                      )
                                                    ],
                                                  ),

                                                  //3
                                                  SizedBox(height: 20,),
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 40.0,
                                                        width: 200.0,
                                                        // color: Colors.transparent,
                                                        decoration: BoxDecoration(
                                                          //color: Colors.green,
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                        padding: EdgeInsets.all(10.0),
                                                        child: Text("Nombre de place",
                                                          style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 11,),),
                                                        // textAlign: TextAlign.center,),
                                                      )
                                                    ],
                                                  ),

                                                  //4
                                                  SizedBox(height: 20,),

                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 40.0,
                                                        width: 200.0,
                                                        // color: Colors.transparent,
                                                        decoration: BoxDecoration(
                                                          //color: Colors.green,
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                        padding: EdgeInsets.all(10.0),
                                                        child: Text("Poids à vide",
                                                          style: TextStyle(color:Color.fromRGBO(61, 223, 194, 1), fontSize: 11,),),
                                                        // textAlign: TextAlign.center,),
                                                      )
                                                    ],
                                                  ),

                                                  //5
                                                  SizedBox(height: 20,),

                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 40.0,
                                                        width: 200.0,
                                                        // color: Colors.transparent,
                                                        decoration: BoxDecoration(
                                                          //color: Colors.green,
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                        padding: EdgeInsets.all(10.0),
                                                        child: Text("Date de fin",
                                                          style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 11,),),
                                                        // textAlign: TextAlign.center,),
                                                      )
                                                    ],
                                                  ),
                                                ]
                                              /* */
                                            ),
                                          ),

                                          color: Colors.blue,),

                                        //visite technique
                                        Container(width: double.infinity,
                                            color: Colors.blue,
                                            child:
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [

                                                //formulaire affiché
                                                //1
                                               // SizedBox(height: 10,),
                                                //1
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 40.0,
                                                      width: 200.0,
                                                      // color: Colors.transparent,
                                                      decoration: BoxDecoration(

                                                        //color: Colors.blue,
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                      padding: EdgeInsets.all(10.0),
                                                      child: Text("Assureur",
                                                        style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 11,),),
                                                      // textAlign: TextAlign.center,),
                                                    )
                                                  ],
                                                ),

                                                //2
                                                SizedBox(height: 25,),
                                                //2
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 40.0,
                                                      width: 200.0,
                                                      // color: Colors.transparent,
                                                      decoration: BoxDecoration(

                                                        //color: Colors.blue,
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                      padding: EdgeInsets.all(10.0),
                                                      child: Text("Date de début",
                                                        style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 11,),),
                                                      // textAlign: TextAlign.center,),
                                                    )
                                                  ],
                                                ),

                                                SizedBox(height: 25,),

                                                //3
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 40.0,
                                                      width: 200.0,
                                                      // color: Colors.transparent,
                                                      decoration: BoxDecoration(

                                                        //color: Colors.blue,
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                      padding: EdgeInsets.all(10.0),
                                                      child: Text("Date de fin",
                                                        style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 11,),),
                                                      // textAlign: TextAlign.center,),
                                                    )
                                                  ],
                                                ),

                                              ],)),
                                        //Text("wael"),

                                      ],
                                    )
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],

                            );

                            //2 le premier marche mtn mais le second affiche une erreur

                            // Le bouton OK qui permet de rester sur le session
                          });
                    },
                    child: Image.asset('assets/infomenu.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });

                      //L'alerte dialog qui s'ouvre au clique du bouton
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 80.0,
                              ),
                             // title: Text('Date et Heure'),
                              //exemple 1 dialogbos et ok seulement
                              content: DefaultTabController(
                                length: 2,
                                child: Scaffold(
                                  appBar: AppBar(
                                    bottom: TabBar(
                                      isScrollable: true,
                                      tabs: [
                                      Tab(
                                        child: Text("Vidange"),
                                        icon: Icon(Icons.backpack_outlined),),

                                      Tab(
                                        child: Text("Entretien"),
                                        icon: Icon(Icons.car_repair_sharp),
                                      ),
                                    ],),
                                  ),
                                  body: TabBarView(
                                    children: [
                                      Container(width: double.infinity,

                                      color: Colors.blue,
                                        //Je dois centrer ce bloc
                                      child: Center(
                                        child:
                                        Column(
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            //date et heure
                                            //title: Text('Date et Heure'),
                                            LiteRollingSwitch(
                                              // child: Text ("Connexion"),
                                              value: false,
                                              colorOn: Color.fromRGBO(61, 223, 194, 1),
                                              colorOff: Colors.white54,
                                              // iconOn: Icons.done,
                                              //iconOff: Icons.add_box_rounded,
                                              onChanged: (bool position) {
                                                print("The button is $position");
                                              },
                                              onDoubleTap: () {
                                                // code
                                              },
                                              onTap: () {
                                                // code
                                              },
                                              onSwipe: () {
                                                // code
                                              },
                                            ),
                                            //formulaire affiché
                                            //1
                                            SizedBox(height: 30,),
                                            //1
                                             Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                 Center( child :
                                                    Container(
                                                      height: 45.0,
                                                      width: 180.0,

                                                      // color: Colors.transparent,
                                                      decoration: BoxDecoration(

                                                        //color: Colors.blue,
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                      padding: EdgeInsets.all(10.0),
                                                      child: Text("N° Immatriculation",
                                                        style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 10,),),
                                                      // textAlign: TextAlign.center,),
                                                    ),
                                                 ),
                                              ],
                                            ),


                                            //2
                                            SizedBox(height: 25,),
                                            //2
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  height: 45.0,
                                                  width: 180.0,
                                                  // color: Colors.transparent,
                                                  decoration: BoxDecoration(

                                                    //color: Colors.blue,
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text("Nombre de Km actuel",
                                                    style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 10,),),
                                                  // textAlign: TextAlign.center,),
                                                )
                                              ],
                                            ),

                                            //3
                                            SizedBox(height: 25,),
                                            //3
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  height: 45.0,
                                                  width: 180.0,
                                                  // color: Colors.transparent,
                                                  decoration: BoxDecoration(

                                                    //color: Colors.blue,
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text("Nombre de Km à parcourir",
                                                    style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 10,),),
                                                  // textAlign: TextAlign.center,),
                                                )
                                              ],
                                            ),

                                          ],),
                                      ),),

                                      //entretien
                                      Container(width: double.infinity,
                                        color: Colors.blue,
                                        child:
                                        Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          //date et heure
                                          //title: Text('Date et Heure'),
                                          LiteRollingSwitch(
                                            // child: Text ("Connexion"),
                                            value: false,
                                            colorOn: Color.fromRGBO(61, 223, 194, 1),
                                            colorOff: Colors.white54,
                                            // iconOn: Icons.done,
                                            //iconOff: Icons.add_box_rounded,
                                            onChanged: (bool position) {
                                              print("The button is $position");
                                            },
                                            onDoubleTap: () {
                                              // code
                                            },
                                            onTap: () {
                                              // code
                                            },
                                            onSwipe: () {
                                              // code
                                            },
                                          ),

                                          //formulaire affiché
                                          //1
                                          SizedBox(height: 30,),
                                          //1
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                height: 45.0,
                                                width: 180.0,
                                                // color: Colors.transparent,
                                                decoration: BoxDecoration(

                                                  //color: Colors.blue,
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                padding: EdgeInsets.all(10.0),
                                                child: Text("N° Immatriculation",
                                                  style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 10,),),
                                                // textAlign: TextAlign.center,),
                                              )
                                            ],
                                          ),

                                          //2
                                          SizedBox(height: 25,),
                                          //2
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                height: 65.0,
                                                width: 180.0,
                                                // color: Colors.transparent,
                                                decoration: BoxDecoration(

                                                  //color: Colors.blue,
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                                padding: EdgeInsets.all(10.0),
                                                child: Text("Pièces changées",
                                                  style: TextStyle(color: Color.fromRGBO(61, 223, 194, 1), fontSize: 10,),),
                                                // textAlign: TextAlign.center,),
                                              )
                                            ],
                                          ),

                                        ],)),
                                      //Text("wael"),

                                    ],
                                  )
                                ),
                              ),
                              // Le bouton OK qui permet de rester sur le session
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Image.asset('assets/maintmenu.png'),
                  ),


                ],
              ),
            ],
          ),
        ),
      );
    }
    //contenu de l'interface profile menu
    Widget contentprofil(){
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
                      labelText: "+229 95959595",
                      suffixIcon: Icon(Icons.edit) //icon at tail of input
                  )
              ),

              SizedBox(height: 10,),

              TextField(
                  enabled: false,
                  controller: type,
                  decoration: InputDecoration(
                      labelText: "Permis Type B",
                      suffixIcon: Icon(Icons.edit) //icon at tail of input
                  )
              ),

              SizedBox(height: 30,),

              TextButton(
                onPressed: () {
                 //Navigator.pushReplacementNamed(context, "/profilmodifier");
                },

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

  //contenu de l'interface deconnexion
  Widget contentdeconnexion(){
    return Container(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          children: [
                    AlertDialog(
                    insetPadding: EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 250.0,
                    ),
                      title: Text('Voulez-vous vous déconnectez ?'),
                    //les deux boutons
                    content: Center(
                    child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      //bouton annuler

                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/menumarchand");
                        },
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
                          padding: const EdgeInsets.fromLTRB(11, 8, 11, 8),
                          child: const Text('Annuler',
                              style: TextStyle(fontSize: 20, color: Colors.white)

                          ),

                        ),
                      ),
                      SizedBox(height: 18,),

                      //bouton confirmer
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/connexion");
                        },
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
                          padding: const EdgeInsets.fromLTRB(11, 8, 11, 8),
                          child: const Text('Confirmer',
                              style: TextStyle(fontSize: 20, color: Colors.white)

                          ),

                        ),
                      ),
                    ],
                    ),
                    ),
                    // Le bouton OK qui permet de rester sur le session

                    )

                          ],
                        ),
                      ),
                    );
                  }

    Widget picturebottom() {
      return Container(
        height: 50.0,
        width: 400.0,

        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 50.0,

        ),

      );
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            picturetop(),
            if(_id == 0)
            content(),

            if(_id == 1)
              contentprofil(),

            if(_id == 2)
              contentdeconnexion(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: _item,
          currentIndex: _id,
          backgroundColor: Color.fromRGBO(61, 223, 194, 1),
          onTap: (int item) {
            setState(() {
              _id = item;
              _valeur = 'clique ${_id.toString()}';

            }
            );
          },
        ),
      );
    }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
    children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: 8,
      );
      return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell)),
      );
    }).toList(),
  );
  }


