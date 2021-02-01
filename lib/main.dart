import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'thermostate.dart';
import 'package:smarthome/Profile.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
