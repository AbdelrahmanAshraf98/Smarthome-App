import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  String _text;
  Function _func;
  CustomButton(this._text , this._func);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: RaisedButton(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                _text,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            color: Color(0xffe9633b),
            textColor: Colors.white,
            onPressed: _func,
          ),
        ),
      ],
    );
  }
}