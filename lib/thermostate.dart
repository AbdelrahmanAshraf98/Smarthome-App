import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/Profile.dart';
import 'components/custombutton.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'components/intensity_editor.dart';

class ThermoState extends StatefulWidget {
  @override
  _ThermostateState createState() => _ThermostateState();
}

class _ThermostateState extends State<ThermoState> {
  String dropdownValue = 'Living Room',
      lightt = 'Light Intensity',
      humd = 'Humidity Degree';
  int temp = 15, light = 72, humidty = 34;
  void _updateLabel(int init, int end, int laps) {
    setState(() {
      temp = end;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Profile(),));
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: Color(0xff43288c),
        title: Text(
          'NEST THERMOSTAT',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
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
                          });
                        },
                        items: <String>[
                          'Living Room',
                          'Bedroom',
                          'Bathroom',
                          'Kitchen'
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
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '0',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          "\u00B0",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          'c',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '45',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          "\u00B0",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          'c',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SingleCircularSlider(
                            60,
                            15,
                            height: 250,
                            width: 250,
                            primarySectors: 0,
                            baseColor: Color(0xffdedeff),
                            selectionColor: Color(0xffe9633b),
                            handlerColor: Color(0xffe9633b),
                            handlerOutterRadius: 14.0,
                            sliderStrokeWidth: 20,
                            showRoundedCapInSelection: true,
                            showHandlerOutter: true,
                            onSelectionChange: _updateLabel,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    temp.toString(),
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xff43288c),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 72,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\u00B0",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xff43288c),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'c',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xff43288c),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '15',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          "\u00B0",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          'c',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '30',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          "\u00B0",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          'c',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff747499),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        child: CircleAvatar(
                          backgroundColor: Color(0xffdedeff),
                          radius: 28,
                          child: Icon(Icons.flash_on,
                              color: Color(0xff43288c), size: 35),
                        ),
                        backgroundColor: Color(0xff747499),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            lightt,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            light.toString()+'%',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.edit,
                          color: Color(0xff747499),
                          size: 35,
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => EditInt(light, lightt));
                        },
                      ),
                    ],
                  ),
                ),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        child: CircleAvatar(
                          backgroundColor: Color(0xffdedeff),
                          radius: 28,
                          child: Icon(Icons.invert_colors,
                              color: Color(0xff43288c), size: 35),
                        ),
                        backgroundColor: Color(0xff747499),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            humd,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            humidty.toString()+'%',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                          child: Icon(
                            Icons.edit,
                            color: Color(0xff747499),
                            size: 35,
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => EditInt(humidty, humd));
                          }),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton('SET TEMPERATURE', () {
                print('Temp has been set up');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
