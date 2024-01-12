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

import 'HomeForm.dart';

class Get_started extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hijau_muda,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
       child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
            child: Container(
                  margin: EdgeInsets.fromLTRB(30, 500, 30, 30),
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){Navigator.of(context).pushNamed("/sign_up");},

                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            width: 1.0,
                            color: Hijau
                        ),
                        backgroundColor: Hijau,
                        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(39.0)
                        )
                    ),
                  ),
            ),
             onTap: (){Navigator.of(context).pushNamed("/sign_up");}
          ),
          InkWell(
            child: Container(
                               margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){Navigator.of(context).pushNamed("/login");},

                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            width: 1.0,
                            color: Pink
                        ),
                        backgroundColor: Pink,
                        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(39.0)
                        )
                    ),
                  ),
            ),
            onTap: (){Navigator.of(context).pushNamed("/login");}
          ),
          ],
        ),
       ),
      ),
    );
  }
}
