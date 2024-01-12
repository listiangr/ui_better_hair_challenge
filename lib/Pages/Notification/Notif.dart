import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:tubes_provis/utils.dart';

class Notif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color(0xffffb0b0),
      ),
      // width: double.infinity,
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
        child: Container(
        // notificationsmrT (151:57)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff80bdab),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // header3oy (189:848)
              width: double.infinity,
              height: 44*fem,
              decoration: BoxDecoration (
                color: Color(0xffffb0b0),
              ),
              child: Center(
                child: Text(
                  'Notifications',
                  // style: SafeGoogleFont (
                  //   'Montserrat',
                  //   fontSize: 15*ffem,
                  //   fontWeight: FontWeight.w800,
                  //   height: 1.2175*ffem/fem,
                  //   letterSpacing: 0.525*fem,
                  //   color: Color(0xffffffff),
                  // ),
                ),
              ),
            ),
            Container(
              // autogroupmuix1uD (NgXNUptV3mFi7URrCXmUiX)
              padding: EdgeInsets.fromLTRB(9*fem, 8*fem, 9*fem, 201*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // notification2UXu (189:847)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.83*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // image2h9m (194:25)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.28*fem),
                          width: 342*fem,
                          height: 121.62*fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only (
                              topLeft: Radius.circular(10*fem),
                              topRight: Radius.circular(10*fem),
                            ),
                            child: Image.asset(
                              'assets/images/image-2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          // healthyhaironmondaykNw (194:76)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 186*fem, 3.71*fem),
                          child: Text(
                            'Healthy Hair on Monday',
                            textAlign: TextAlign.center,
                            // style: SafeGoogleFont (
                            //   'Lato',
                            //   fontSize: 12*ffem,
                            //   fontWeight: FontWeight.w700,
                            //   height: 1.2*ffem/fem,
                            //   letterSpacing: 0.42*fem,
                            //   color: Color(0xff000000),
                            // ),
                          ),
                        ),
                        Container(
                          // loremipsumdolorsitametconsecte (194:77)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 7.57*fem),
                          constraints: BoxConstraints (
                            maxWidth: 321*fem,
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet consectetur. Urna nulla donec in mi nisi nunc lorem ultricies. Condimentum vitae habitant molestie at. Lorem ipsum dolor sit amet consectetur. Urna nulla donec in mi nisi nunc lorem ultricies. Condimentum vitae habitant molestie at. ',
                            // style: SafeGoogleFont (
                            //   'Lato',
                            //   fontSize: 10*ffem,
                            //   fontWeight: FontWeight.w400,
                            //   height: 1.5*ffem/fem,
                            //   letterSpacing: 0.35*fem,
                            //   color: Color(0xff000000),
                            // ),
                          ),
                        ),
                        Container(
                          // monday19thdecember2022Qro (194:78)
                          margin: EdgeInsets.fromLTRB(179*fem, 0*fem, 0*fem, 0*fem),
                          child: Text(
                            'Monday, 19th December 2022',
                            // style: SafeGoogleFont (
                            //   'Lato',
                            //   fontSize: 10*ffem,
                            //   fontWeight: FontWeight.w600,
                            //   height: 1.5*ffem/fem,
                            //   letterSpacing: 0.35*fem,
                            //   color: Color(0xff000000),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // notification1VNT (189:846)
                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // image1k3V (189:838)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                          width: 342*fem,
                          height: 117*fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only (
                              topLeft: Radius.circular(10*fem),
                              topRight: Radius.circular(10*fem),
                            ),
                            child: Image.asset(
                              'assets/images/image-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          // welcomejessicapaulineaoD (189:839)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 181*fem, 3*fem),
                          child: Text(
                            'Welcome Jessica Pauline.',
                            textAlign: TextAlign.center,
                            // style: SafeGoogleFont (
                            //   'Lato',
                            //   fontSize: 12*ffem,
                            //   fontWeight: FontWeight.w700,
                            //   height: 1.2*ffem/fem,
                            //   letterSpacing: 0.42*fem,
                            //   color: Color(0xff000000),
                            // ),
                          ),
                        ),
                        Container(
                          // loremipsumdolorsitametconsecte (189:840)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 15*fem),
                          constraints: BoxConstraints (
                            maxWidth: 321*fem,
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet consectetur. Urna nulla donec in mi nisi nunc lorem ultricies. Condimentum vitae habitant molestie at. Lorem ipsum dolor sit amet consectetur. Urna nulla donec in mi nisi nunc lorem ultricies. Condimentum vitae habitant molestie at. ',
                            // style: SafeGoogleFont (
                            //   'Lato',
                            //   fontSize: 10*ffem,
                            //   fontWeight: FontWeight.w400,
                            //   height: 1.5*ffem/fem,
                            //   letterSpacing: 0.35*fem,
                            //   color: Color(0xff000000),
                            // ),
                          ),
                        ),
                        Container(
                          // sunday18thdecember2022NsV (189:845)
                          margin: EdgeInsets.fromLTRB(183*fem, 0*fem, 0*fem, 0*fem),
                          child: Text(
                            'Sunday, 18th December 2022',
                            // style: SafeGoogleFont (
                            //   'Lato',
                            //   fontSize: 10*ffem,
                            //   fontWeight: FontWeight.w600,
                            //   height: 1.5*ffem/fem,
                            //   letterSpacing: 0.35*fem,
                            //   color: Color(0xff000000),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // navigationayZ (182:45)
              width: double.infinity,
              height: 59*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangleUZ9 (182:44)
                    left: 0*fem,
                    top: 1*fem,
                    child: Align(
                      child: SizedBox(
                        width: 360*fem,
                        height: 58*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xff352c39),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group22iTV (212:116)
                    left: 42*fem,
                    top: 10*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 34*fem,
                        height: 42*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // iconhomevpT (182:51)
                              left: 4*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25.01*fem,
                                  height: 25.01*fem,
                                  child: Image.asset(
                                    'assets/images/icon-home.png',
                                    width: 25.01*fem,
                                    height: 25.01*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // homewUf (182:59)
                              left: 0*fem,
                              top: 25*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 17*fem,
                                  child: Text(
                                    'Home',
                                    // style: SafeGoogleFont (
                                    //   'Alata',
                                    //   fontSize: 12*ffem,
                                    //   fontWeight: FontWeight.w400,
                                    //   height: 1.38*ffem/fem,
                                    //   letterSpacing: 0.42*fem,
                                    //   color: Color(0xffffffff),
                                    // ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconphoneCQb (182:47)
                    left: 171*fem,
                    top: 10*fem,
                    child: Align(
                      child: SizedBox(
                        width: 16.67*fem,
                        height: 20.84*fem,
                        child: Image.asset(
                          'assets/images/icon-phone-PLw.png',
                          width: 16.67*fem,
                          height: 20.84*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // notificationstoD (182:60)
                    left: 142*fem,
                    top: 35*fem,
                    child: Align(
                      child: SizedBox(
                        width: 76*fem,
                        height: 17*fem,
                        child: Text(
                          'Notifications',
                          // style: SafeGoogleFont (
                          //   'Alata',
                          //   fontSize: 12*ffem,
                          //   fontWeight: FontWeight.w400,
                          //   height: 1.38*ffem/fem,
                          //   letterSpacing: 0.42*fem,
                          //   color: Color(0xffffb0b0),
                          // ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group23BXR (212:118)
                    left: 288*fem,
                    top: 10*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 38*fem,
                        height: 42*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // iconpersonVHD (182:54)
                              left: 6*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25.01*fem,
                                  height: 25.01*fem,
                                  child: Image.asset(
                                    'assets/images/icon-person.png',
                                    width: 25.01*fem,
                                    height: 25.01*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // profilezUs (182:61)
                              left: 0*fem,
                              top: 25*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 38*fem,
                                  height: 17*fem,
                                  child: Text(
                                    'Profile',
                                    // style: SafeGoogleFont (
                                    //   'Alata',
                                    //   fontSize: 12*ffem,
                                    //   fontWeight: FontWeight.w400,
                                    //   height: 1.38*ffem/fem,
                                    //   letterSpacing: 0.42*fem,
                                    //   color: Color(0xffffffff),
                                    // ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangleGSP (182:62)
                    left: 144*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 71*fem,
                        height: 4*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xffffb0b0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}