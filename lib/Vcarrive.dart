import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_switch/flutter_switch.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Vcarrive extends StatefulWidget {

  @override
  State<Vcarrive> createState() => _VcarriveState();
}

class _VcarriveState extends State<Vcarrive> {

  //pour dropdown

  // Initial Selected Value
  String dropdownvalue = 'Type de contenant';

  // List of items in our dropdown menu
  var items = [
    'Type de contenant',
    'Charger',
    'Vide',

  ];

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

  // Méthodes
  // Image coin supérieur left
  Widget picturetop() {
    return Container(

      // body: Column(),
      height: 200.0,
      width: 400.0,
      decoration: BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/hautad.png"),
            fit: BoxFit.cover,
            alignment: Alignment.center),
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
            SizedBox(height: 210,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
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
                              horizontal: 50.0,
                              vertical: 210.0,
                            ),
                            title: Text('Date et Heure'),
                            //exemple 1 dialogbos et ok seulement
                            content: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // Switch(value: val1, onChanged: change1, activeColor: Colors.blue,),

                                  //Pour faire le bouton qui glisse
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

                                  SizedBox(height: 30,),
                                  // selecte plusieurs
                                  DropdownButton(

                                    // Initial Value
                                    value: dropdownvalue,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ],

                                // faire la partie du contenant ici, vide ou chargée



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

                  child: Image.asset('assets/vcaller.png'),

                ),

                SizedBox(height: 200,),

                //deux
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
                            content: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // Switch(value: val1, onChanged: change1, activeColor: Colors.blue,),

                                  //Pour faire le bouton qui glisse
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
                  child: Image.asset('assets/vcescale.png'),
                ),

              ],
            ),

            //deuxieme ligne
            SizedBox(height: 40,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                              horizontal: 50.0,
                              vertical: 250.0,
                            ),
                            title: Text('Date et Heure'),
                            //exemple 1 dialogbos et ok seulement
                            content: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  // Switch(value: val1, onChanged: change1, activeColor: Colors.blue,),

                                  //Pour faire le bouton qui glisse
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
                  child: Image.asset('assets/vcarrivee.png'),
                ),



              ],
            ),
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

      //icone bas de menu
      child: Row(
        children: <Widget>[
          Expanded(
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
        image: new DecorationImage(
            image: new AssetImage("assets/basmenu.png"),
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
        children: <Widget>[
          picturetop(),
          content(),
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

  CustomSwitchButton(
      {required MaterialColor backgroundColor, required Color unCheckedColor, required MaterialColor checkedColor, required bool checked}) {}

  CupertinoSwitch(
      {required value, required Null Function(dynamic value) onChanged}) {}
}


