import 'package:flutter/material.dart';
import 'package:tubes_provis/Database/Comm/comHelper.dart';
import 'package:tubes_provis/Database/Comm/genLoginSignupHeader.dart';
import 'package:tubes_provis/Database/Comm/genTextFormField.dart';
import 'package:tubes_provis/Database/DatabaseHandler/DbHelper.dart';
import 'package:tubes_provis/Database/Model/UserModel.dart';
import 'package:tubes_provis/Pages/LoginRegister/SignupForm.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tubes_provis/utils.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
 
import 'HomeForm.dart';

class Logo extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hijau,
      body: 
      InkWell(
      child : Container(
          padding: EdgeInsets.fromLTRB(30.00, 250.00, 30.00, 250.00),
          width: double.infinity,
          height: 800.00,
          decoration: BoxDecoration (
            color: Color(0xff80bdab),
      ),
      child: Center(
        child : Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      ),
      onTap: (){Navigator.of(context).pushNamed("/get_started");}
      ),
    );
  }
}
