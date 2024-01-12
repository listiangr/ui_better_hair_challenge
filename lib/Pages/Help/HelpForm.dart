import 'package:flutter/material.dart';
import 'package:tubes_provis/Database/Comm/comHelper.dart';
import 'package:tubes_provis/Database/Comm/genLoginSignupHeader.dart';
import 'package:tubes_provis/Database/Comm/genTextFormField.dart';
import 'package:tubes_provis/Database/DatabaseHandler/DbHelp.dart';
import 'package:tubes_provis/Database/Model/HelpModel.dart';
import 'package:tubes_provis/Pages/Help/HelpForm.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tubes_provis/utils.dart';
import 'package:flutter/gestures.dart';

class HelpForm extends StatefulWidget {
  @override
  _HelpFormState createState() => _HelpFormState();
}

class _HelpFormState extends State<HelpForm> {
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  final _formKey = new GlobalKey<FormState>();

  final _conUsername = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conMessage = TextEditingController();
  var dbHelp;

  @override
  void initState() {
    super.initState();
    dbHelp = DbHelp();
  }

  help() async {
    String username = _conUsername.text;
    String email = _conEmail.text;
    String password = _conPassword.text;
    String message = _conMessage.text;

    if (username.isEmpty) {
      alertDialog(context, "Please Enter Username");
    } else if (email.isEmpty) {
      alertDialog(context, "Please Enter Email");
    } else if (password.isEmpty) {
      alertDialog(context, "Please Enter Password");
    } else if (message.isEmpty) {
      alertDialog(context, "Please Enter Message");
    } else {
      await dbHelp._onCreate();
      await dbHelp.saveData(HelpModel, help); 
    }
  }

  Future setSP(HelpModel help) async {
    final SharedPreferences sp = await _pref;
    sp.setString("help_id", help.help_id);
    sp.setString("username", help.user_name);
    sp.setString("email", help.email);
    sp.setString("password", help.password);
    sp.setString("message", help.message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hijau,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Pink,
      ),
       drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xffffffff)),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage("http://medialengka.com/profile.jpg"),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 20),
                  Text("username",
                      style: TextStyle(fontSize: 15, color: Colors.white))
                ],
              ),
            ), 
            ListTile(
                leading: const Icon(Icons.house),
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pushNamed("/home");
                }),
            ListTile(
                leading: const Icon(Icons.person_outline),
                title: Text("Profile"),
                onTap: () {
                  Navigator.of(context).pushNamed("/profile");
                }),
            ListTile(
                leading: const Icon(Icons.calculate),
                title: Text("Treatment"),
                onTap: () {
                  Navigator.of(context).pushNamed("/detail");
                }),
            ListTile(
                leading: const Icon(Icons.calculate),
                title: Text("Notifications"),
                onTap: () {
                  Navigator.of(context).pushNamed("/notif");
                }),
            ListTile(
                leading: const Icon(Icons.calculate),
                title: Text("About us"),
                onTap: () {
                  Navigator.of(context).pushNamed("/about");
                }),
            ListTile(
                leading: const Icon(Icons.calculate),
                title: Text("Help"),
                onTap: () {
                  Navigator.of(context).pushNamed("/help");
                }),
            Container(
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Column(
                        children: <Widget>[
                          Divider(),
                          ListTile(
                              leading: Icon(Icons.logout),
                              title: Text('Log out'),
                              onTap: (){Navigator.of(context).pushNamed("/");}
                          )
                        ],
                      ))),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                genLoginSignupHeader('Help'),
                getTextFormField(
                    controller: _conUsername,
                    icon: Icons.person,
                    hintName: 'Username'
                ),
                SizedBox(height: 10.0),
                getTextFormField(
                  controller: _conEmail,
                  icon: Icons.email,
                  hintName: 'Email',
                  isObscureText: true,
                ),
                SizedBox(height: 10.0),
                getTextFormField(
                  controller: _conPassword,
                  icon: Icons.lock,
                  hintName: 'Password',
                  isObscureText: true,
                ),
                SizedBox(height: 10.0),
                getTextFormField(
                  controller: _conMessage,
                  icon: Icons.message,
                  hintName: 'Message',
                  isObscureText: true,
                ),
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      'Send',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: help,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}