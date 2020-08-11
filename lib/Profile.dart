import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static List<String> entries = <String>['Refrigerator ', 'Lamp', 'Air Conditioner', 'Router',];
  static List<String> entries2 = <String>['Door 1', 'Door 2', 'Door 3', 'Door 4','Door 5'];
  static List<bool> buttons = <bool>[true,true,false,true];
  static List<bool> buttons2 = <bool>[false,true,false,true,true];
  static List<String> vectorsname = <String>['a1','a2','a3','a4','a5'];
  static List<String> vectorsname2 = <String>['b','b','b','b','b'];
  static List<String> usedlist = List.from(entries);
  static List<String> usedimages = List.from(vectorsname);
  static List<bool> buttonstatus = List.from(buttons);
  static List<bool> buttonstatus2 = List.from(buttons2);


  String dropdownValue = 'Devices';
  bool key = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff43288c),
        title: Center(
          child: Text(
            'PROFILE',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  color: Color(0xff43288c),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/2.jpg',
                          ),
                          radius: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Welcome Home',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xffe9633b),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text(
                              'Abdelrahman Ashraf',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 20.0, left: 20.0, right: 20.0, top: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.flash_on, color: Color(0xff43288c), size: 35),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Power Usage for Today',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xff747499),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '36.4',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              Text(
                                ' kwh',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffdedeff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Theme(
                        data: new ThemeData(canvasColor: Color(0xffdedeff)),
                        child: Center(
                          child: DropdownButton(
                            elevation: 4,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            value: dropdownValue,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            iconSize: 40,
                            underline: Container(
                              height: 0,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                                if(dropdownValue == 'Doors'){
                                  usedlist = List.from(entries2);
                                  usedimages = List.from(vectorsname2);
                                  buttonstatus = List.from(buttons2);
                                  print(usedlist.length);
                                }
                                else
                                  {
                                    usedlist = List.from(entries);
                                    usedimages = List.from(vectorsname);
                                    buttonstatus = List.from(buttons);
                                  }
                              });
                            },
                            items: <String>[
                              'Devices',
                              'Doors',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    child: ListView.separated(
//                    physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                        primary: false,
                        itemCount: usedlist.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff43288c),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, bottom: 12.0,left:25.0,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/${usedimages[index]}.png',
                                  ),
                                  Text(
                                    '${usedlist[index]}',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      CupertinoSwitch(
                                        value: buttonstatus[index],
                                        activeColor: Color(0xffe9633b),
                                        onChanged: (bool value) {
                                          setState(() {
                                            buttonstatus[index] = value;

                                          });
                                        },
                                      ),
                                      if(buttonstatus[index] == true ) Text(
                                        'ON',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Color(0xff755fc9),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      if(buttonstatus[index] == false )Text(
                                      'OFF',
                                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                          color: Color(0xff755fc9),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          ),
                          ),
                          ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },separatorBuilder: (BuildContext context, int index) => const Divider(),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
