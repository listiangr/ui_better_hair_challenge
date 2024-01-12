import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:tubes_provis/Pages/EditProfile/EditProfile.dart';
import 'package:tubes_provis/utils.dart';
import 'package:tubes_provis/main.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffb0b0),
        //color: Color(0xffffffff)
        //title: Text(widget.title),
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
                  Navigator.of(context).pushNamed("/treatment");
                }),
            ListTile(
                leading: const Icon(Icons.calculate),
                title: Text("notifications"),
                onTap: () {
                  Navigator.of(context).pushNamed("/notification");
                }),
            ListTile(
                leading: const Icon(Icons.calculate),
                title: Text("about us"),
                onTap: () {
                  Navigator.of(context).pushNamed("/about");
                }),
            ListTile(
                leading: const Icon(Icons.calculate),
                title: Text("help"),
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
                            leading: Icon(Icons.logout), title: Text('Log out'))
                      ],
                    ))),
          ],
        ),
      ),
      body: Container(
        // profilenwV (198:102)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffb0b0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupsapbiq9 (NgXM1hff2nW3jYMQiSsapB)
              width: double.infinity,
              height: 741 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // autogrouppf31GLs (NgXLa3jjdT1nzPCvNrpf31)
                    left: 17 * fem,
                    top: 444 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 32 * fem, 0 * fem, 35 * fem),
                      width: 332 * fem,
                      height: 274 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // group26L5q (228:85)
                            margin: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 215.5 * fem, 28 * fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // image5SuZ (226:78)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 21.5 * fem, 0 * fem),
                                      width: 30 * fem,
                                      height: 30 * fem,
                                      child: Image.asset(
                                        'assets/images/image-5.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      // aboutMFq (226:92)
                                      'About Us',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2 * ffem / fem,
                                        letterSpacing: 0.525 * fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // line5U5Z (226:98)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 29 * fem),
                            width: double.infinity,
                            height: 1 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff000000),
                            ),
                          ),
                          Container(
                            // autogroupsyjbCXM (NgXLi3WQsW5Kx1xF16SyJb)
                            margin: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 225.5 * fem, 32 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // image6Wnw (226:80)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 21.5 * fem, 0 * fem),
                                  width: 30 * fem,
                                  height: 30 * fem,
                                  child: Image.asset(
                                    'assets/images/image-6.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // jessicapaulined6s (226:91)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Text(
                                      'Help',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2 * ffem / fem,
                                        letterSpacing: 0.525 * fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // line6Jio (226:99)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 26 * fem),
                            width: double.infinity,
                            height: 1 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff000000),
                            ),
                          ),
                          Container(
                            // group27T5u (228:88)
                            margin: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 198 * fem, 0 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // image7zLj (226:82)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 22 * fem, 0 * fem),
                                  width: 30 * fem,
                                  height: 30 * fem,
                                  child: Image.asset(
                                    'assets/images/image-7.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // jessicapaulineJsD (226:90)
                                  'Sign Out',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2 * ffem / fem,
                                    letterSpacing: 0.525 * fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroup1qhr347 (NgXKMFSNRQ5YfTibgN1QhR)
                    left: 17 * fem,
                    top: 15 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          73 * fem, 46 * fem, 59 * fem, 40 * fem),
                      width: 332 * fem,
                      height: 418 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // profileimageuc7 (201:75)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 18 * fem, 27 * fem),
                            width: 100 * fem,
                            height: 100 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50 * fem),
                              child: Image.asset(
                                'assets/images/profile-image-SE7.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            // jessicapaulinebjq (215:78)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 14 * fem, 62 * fem),
                            child: Text(
                              'Jessica Pauline',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.2 * ffem / fem,
                                letterSpacing: 0.875 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // group27HsZ (234:113)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 18 * fem),
                            padding: EdgeInsets.fromLTRB(10.61 * fem,
                                11.16 * fem, 10.3 * fem, 7.81 * fem),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff80bdab),
                              borderRadius: BorderRadius.circular(15 * fem),
                            ),
                            child: Center(
                              // straightdrynaturalblackhairarf (234:112)
                              child: SizedBox(
                                width: 179.09 * fem,
                                height: 11.03 * fem,
                                child: Image.asset(
                                  'assets/images/straight-dry-natural-black-hair.png',
                                  width: 179.09 * fem,
                                  height: 11.03 * fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupcrcxJGs (NgXKeaGqSr3Y5LLThYCRcX)
                            margin: EdgeInsets.fromLTRB(
                                9 * fem, 0 * fem, 23 * fem, 0 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // autogroupulzp2Tm (NgXKn54Lz9QyUVQpnWULzP)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                  width: 50 * fem,
                                  height: 50 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0x3fffb0b0),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        letterSpacing: 1.05 * fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 9 * fem,
                                ),
                                Container(
                                  // autogroup5vshfmd (NgXKrV6f2U29vNWciM5VsH)
                                  width: 50 * fem,
                                  height: 50 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0x3fffb0b0),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        letterSpacing: 1.05 * fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 9 * fem,
                                ),
                                Container(
                                  // autogroupo26x7tX (NgXKyu3yHJmuj7e9smo26X)
                                  width: 50 * fem,
                                  height: 50 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0x3fffb0b0),
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '0',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2 * ffem / fem,
                                        letterSpacing: 1.05 * fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup9hyfCQB (NgXLCUXM8bfzKTNvGw9HYF)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 23.5 * fem, 0 * fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // completedj9D (218:107)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 22.5 * fem, 4 * fem),
                                  child: Text(
                                    'Completed',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2 * ffem / fem,
                                      letterSpacing: 0.28 * fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // ongoingpgT (218:108)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 2 * fem, 31 * fem, 0 * fem),
                                  child: Text(
                                    'On Going',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2 * ffem / fem,
                                      letterSpacing: 0.28 * fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // failedvUb (218:109)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 4 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Failed',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2 * ffem / fem,
                                      letterSpacing: 0.28 * fem,
                                      color: Color(0xff000000),
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
                  InkWell(
                      child: Positioned(
                        // rectangle302Gj (226:94)
                        left: 133 * fem,
                        top: 230 * fem,
                        child: Align(
                          child: SizedBox(
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 315.0),
                              width: 95 * fem,
                              height: 30 * fem,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffffb0b0)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Edit Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2 * ffem / fem,
                                    letterSpacing: 0.525 * fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("/edit_profile");
                      }),
                ],
              ),
            ),
            Container(
              // navigation4jD (203:75)
              width: double.infinity,
              height: 59 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectanglenv7 (203:76)
                    left: 0 * fem,
                    top: 1 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 360 * fem,
                        height: 58 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff352c39),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group25Hby (212:122)
                    left: 42 * fem,
                    top: 10 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 34 * fem,
                        height: 42 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // iconhomeyzb (203:77)
                              left: 4 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25.01 * fem,
                                  height: 25.01 * fem,
                                  child: Image.asset(
                                    'assets/images/icon-home-x59.png',
                                    width: 25.01 * fem,
                                    height: 25.01 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // homet5y (203:80)
                              left: 0 * fem,
                              top: 25 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34 * fem,
                                  height: 17 * fem,
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.38 * ffem / fem,
                                      letterSpacing: 0.42 * fem,
                                      color: Color(0xffffffff),
                                    ),
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
                    // group24xbd (212:120)
                    left: 142 * fem,
                    top: 10 * fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 76 * fem,
                        height: 42 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // iconphonerwu (203:81)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1.33 * fem, 4.16 * fem),
                              width: 16.67 * fem,
                              height: 20.84 * fem,
                              child: Image.asset(
                                'assets/images/icon-phone.png',
                                width: 16.67 * fem,
                                height: 20.84 * fem,
                              ),
                            ),
                            Text(
                              // notificationsYpj (203:85)
                              'Notifications',
                              style: TextStyle(
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.38 * ffem / fem,
                                letterSpacing: 0.42 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconperson5Zm (203:86)
                    left: 294 * fem,
                    top: 10 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 25.01 * fem,
                        height: 25.01 * fem,
                        child: Image.asset(
                          'assets/images/icon-person-t4K.png',
                          width: 25.01 * fem,
                          height: 25.01 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // profileaWX (203:91)
                    left: 288 * fem,
                    top: 35 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 38 * fem,
                        height: 17 * fem,
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.38 * ffem / fem,
                            letterSpacing: 0.42 * fem,
                            color: Color(0xffffb0b0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectanglegZZ (203:92)
                    left: 270 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 71 * fem,
                        height: 4 * fem,
                        child: Container(
                          decoration: BoxDecoration(
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
    );
  }
}
