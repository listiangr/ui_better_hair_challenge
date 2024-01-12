import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:tubes_provis/main.dart';
import 'package:tubes_provis/utils.dart';

class Edit_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        // editprofileYpK (107:394)
        width: double.infinity,
        height: 800 * fem,
        decoration: BoxDecoration(
          color: Color(0xff80bdab),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangles5u (134:18)
              left: 14 * fem,
              top: 15 * fem,
              child: Align(
                child: SizedBox(
                  width: 332 * fem,
                  height: 770 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20 * fem),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 50 * fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
                child: Positioned(
                  // iconbackj87 (228:81)
                  left: 32 * fem,
                  top: 37 * fem,

                  child: SizedBox(
                    child: Container(
                      margin: const EdgeInsets.only(top: 40.0, left: 40.0),
                      width: 25 * fem,
                      height: 25 * fem,
                      child: Image.asset(
                        'assets/images/icon-back.png',
                        width: 25 * fem,
                        height: 25 * fem,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("/profile");
                }),
            Positioned(
              // titleSHR (134:23)
              left: 135.5 * fem,
              top: 41 * fem,
              child: Align(
                child: SizedBox(
                  width: 90 * fem,
                  height: 19 * fem,
                  child: Text(
                    'Edit Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2175 * ffem / fem,
                      letterSpacing: 0.525 * fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // imageWYB (137:20)
              left: 118 * fem,
              top: 94 * fem,
              child: Container(
                width: 125 * fem,
                height: 126.67 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // profileimage2Fd (134:26)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 125 * fem,
                          height: 125 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(75 * fem),
                            child: Image.asset(
                              'assets/images/profile-image.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // iconeditKEj (134:34)
                      left: 75.3333435059 * fem,
                      top: 93.3332519531 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 33.33 * fem,
                          height: 33.33 * fem,
                          child: Image.asset(
                            'assets/images/icon-edit.png',
                            width: 33.33 * fem,
                            height: 33.33 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // namepSP (137:21)
              left: 56 * fem,
              top: 269 * fem,
              child: Container(
                width: 249 * fem,
                height: 47 * fem,
                child: Container(
                  // autogroupqwa79jZ (NgXJY78FofsAqngwAPqWa7)
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                  width: double.infinity,
                  height: 46 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // labelnames9m (134:39)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 9 * fem),
                        width: double.infinity,
                        child: Text(
                          'Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2 * ffem / fem,
                            letterSpacing: 0.42 * fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // jessicapaulineNMR (134:47)
                        width: double.infinity,
                        child: Text(
                          'Jessica Pauline',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.2 * ffem / fem,
                            letterSpacing: 0.42 * fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // emailHUP (137:23)
              left: 54.5 * fem,
              top: 340 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                width: 250.5 * fem,
                height: 47 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // labelemailPXR (134:40)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: double.infinity,
                      child: Text(
                        'Email Address',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.42 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // jessicapaulinegmailcomtj5 (134:48)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: double.infinity,
                      child: Text(
                        'jessicapauline@gmail.com',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.42 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // passwordzXD (137:24)
              left: 55.5 * fem,
              top: 407 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                width: 250.5 * fem,
                height: 43 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // labelpasswordVis (134:41)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      width: double.infinity,
                      child: Text(
                        'Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.42 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // CdH (134:49)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                      width: double.infinity,
                      child: Text(
                        '***************',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.42 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // hairprofileWdy (225:77)
              left: 55 * fem,
              top: 540 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                width: 250 * fem,
                height: 43 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // labelhairprofilecS7 (225:79)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 8 * fem),
                      width: double.infinity,
                      child: Text(
                        'Hair Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.42 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // straightdrynaturalblackK5d (225:80)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                      width: double.infinity,
                      child: Text(
                        'Straight, dry, natural black.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.2 * ffem / fem,
                          letterSpacing: 0.42 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // confirm1DM (137:25)
              left: 55 * fem,
              top: 471 * fem,
              child: Container(
                width: 251 * fem,
                height: 48 * fem,
                child: Text(
                  'Confirm Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2 * ffem / fem,
                    letterSpacing: 0.42 * fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            InkWell(
                child: Positioned(
                  // login1nK (123:99)
                  left: 58 * fem,
                  top: 507 * fem,
                  child: Align(
                    child: SizedBox(
                      // width: 62*fem,
                      // height: 25*fem,
                      child: Container(
                        margin: const EdgeInsets.only(top: 650.0),
                        width: 249 * fem,
                        height: 47 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff80bdab),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Save',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2 * ffem / fem,
                              letterSpacing: 0.525 * fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("/profile");
                }),
          ],
        ),
      ),
    );
  }
}
