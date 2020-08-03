import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custombutton.dart';
import 'package:google_fonts/google_fonts.dart';

class EditInt extends StatefulWidget {
  int h ;
  String s;
  EditInt(this.h,this.s);
  @override
  _EditIntState createState() => _EditIntState(h,s);
}

class _EditIntState extends State<EditInt> {
  int h ;
  String s;
  _EditIntState(this.h,this.s);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      height: 250,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              s,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  color: Color(0xff43288c),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                    Icons.flash_on,
                    color: Color(0xff43288c),
                    size: 50),
                SizedBox(width: 10,),
                Text(
                  h.toString(),
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 36,
                    ),
                  ),),
                Text(
                 '%',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 36,
                    ),
                  ),),
              ],
            ),

            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Color(0xff43288c),
                inactiveTrackColor: Color(0xffdedeff),
                thumbColor: Color(0xff43288c),
                overlayColor: Color(0xffdedeff),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: h.toDouble(),
                min: 0,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    h = value.round();
                  });
                },
              ),
            ),
            CustomButton('Apply', () {
              Navigator.pop(context,h);
              print('applied');
            })
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
      ),
    );
  }
}
