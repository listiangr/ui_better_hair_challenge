import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:tubes_provis/utils.dart';

class About extends StatelessWidget {
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
                      backgroundImage: NetworkImage("http://medialengka.com/profile.jpg"),
                      maxRadius: 30,
                    ),
                    SizedBox(width: 20),
                    Text("username",
                        style: TextStyle(fontSize: 15, color: Colors.white)
                    )
                  ],
                ),
              ),
              ListTile(
                  leading: const Icon(Icons.house),
                  title: Text("Home"),
                  onTap: (){Navigator.of(context).pushNamed("/home");}
              ),
              ListTile(
                  leading: const Icon(Icons.person_outline),
                  title: Text("Profile"),
                  onTap: (){Navigator.of(context).pushNamed("/profile");}
              ),
              ListTile(
                  leading: const Icon(Icons.calculate),
                  title: Text("Treatment"),
                  onTap: (){Navigator.of(context).pushNamed("/treatment");}
              ),
               ListTile(
                  leading: const Icon(Icons.calculate),
                  title: Text("Notifications"),
                  onTap: (){Navigator.of(context).pushNamed("/notification");}
              ),
               ListTile(
                  leading: const Icon(Icons.calculate),
                  title: Text("About us"),
                  onTap: (){Navigator.of(context).pushNamed("/about");}
              ),
               ListTile(
                  leading: const Icon(Icons.calculate),
                  title: Text("Help"),
                  onTap: (){Navigator.of(context).pushNamed("/help");}
              ),
              Container(
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Column(
                        children: <Widget>[
                          Divider(),
                          ListTile(
                              leading: Icon(Icons.logout),
                              title: Text('Log out'))
                        ],
                      )
                    )
                  ),
            ],
          ),
        ),
      body: SingleChildScrollView(
        child: Container(
        // aboutusZZu (106:9)
        width: double.infinity,
        height: 800*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // saloonimageJGb (107:309)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 360*fem,
                  height: 150*fem,
                  child: Image.asset(
                    'assets/images/saloon-image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // container2co5 (107:392)
              left: 0*fem,
              top: 163*fem,
              child: Container(
                width: 609*fem,
                height: 204*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // aboutuswym (107:390)
                      left: 23*fem,
                      top: 0*fem,
                      child: Container(
                        width: 315*fem,
                        height: 204*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // titleGm9 (107:314)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                              child: Text(
                                'About Us',
                                textAlign: TextAlign.center,
                                style : TextStyle(
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175*ffem/fem,
                                  letterSpacing: 0.525*fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // contentZtf (107:327)
                              constraints: BoxConstraints (
                                maxWidth: 315*fem,
                              ),
                              child: Text(
                                '     Lorem ipsum dolor sit amet consectetur. Urna nulla donec in mi nisi nunc lorem ultricies. Condimentum vitae habitant molestie at. Morbi arcu semper varius consectetur a duis condimentum feugiat arcu. Nec quis nunc ut cras morbi.',
                                style : TextStyle(
                                  fontSize: 7*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 2*ffem/fem,
                                  letterSpacing: 0.35*fem,
                                  color: Color(0xff000000)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // container3FmV (107:393)
              left: 0*fem,
              top: 41.6458740234*fem,
              child: Container(
                width: 1215.5*fem,
                height: 758.35*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectanglexA7 (107:364)
                      left: 0*fem,
                      top: 335.3538818359*fem,
                      child: Align(
                        child: SizedBox(
                          width: 363*fem,
                          height: 423*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xff352c39),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ourteamsXy (107:389)
                      left: 27*fem,
                      top: 343.3538818359*fem,
                      child: Container(
                        width: 302*fem,
                        height: 119*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(50*fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // titleAmy (107:365)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                              child: Text(
                                'Our Team',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175*ffem/fem,
                                  letterSpacing: 0.525*fem,
                                  color: Color(0xffffb0b0),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupw6x54sM (NgXFy1k1rGdEnndvgRw6X5)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // evaimageBSB (107:371)
                                    width: 50*fem,
                                    height: 50*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50*fem),
                                      child: Image.asset(
                                        'assets/images/eva-image.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 46*fem,
                                  ),
                                  Container(
                                    // kathlynimage63M (107:372)
                                    width: 50*fem,
                                    height: 50*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50*fem),
                                      child: Image.asset(
                                        'assets/images/kathlyn-image.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 46*fem,
                                  ),
                                  Container(
                                    // aliciaimage1AK (107:373)
                                    width: 50*fem,
                                    height: 50*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50*fem),
                                      child: Image.asset(
                                        'assets/images/alicia-image.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupevfdKwh (NgXGFfvvc3fmTMhBKFevFD)
                              margin: EdgeInsets.fromLTRB(11.5*fem, 0*fem, 7*fem, 0*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // evalillian4PV (107:374)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 53*fem, 0*fem),
                                    child: Text(
                                      'Eva L.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 7*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2*ffem/fem,
                                        letterSpacing: 0.35*fem,
                                        color: Color(0xffffb0b0)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // kathlynmatronawy5 (107:375)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47.5*fem, 0*fem),
                                    child: Text(
                                      'Kathlyn M.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 7*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2*ffem/fem,
                                        letterSpacing: 0.35*fem,
                                        color: Color(0xffffb0b0)
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // aliciakyleeqoZ (107:376)
                                    'Alicia K.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 7*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2*ffem/fem,
                                        letterSpacing: 0.35*fem,
                                        color: Color(0xffffb0b0)
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
                      // lineNHh (107:379)
                      left: 0.0013885498*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 1215.5*fem,
                          height: 482.21*fem,
                          child: Image.asset(
                            'assets/images/line.png',
                            width: 1215.5*fem,
                            height: 482.21*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // socialmediasVM (113:412)
                      left: 26.5625*fem,
                      top: 497.3538818359*fem,
                      child: Container(
                        width: 301.44*fem,
                        height: 166.83*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupaqs3CGj (NgXHgiNtXZ3Mzy8xijaqS3)
                              padding: EdgeInsets.fromLTRB(0.44*fem, 0*fem, 0.44*fem, 19.12*fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // titleWoD (129:16)
                                    margin: EdgeInsets.fromLTRB(6.44*fem, 0*fem, 0*fem, 33*fem),
                                    constraints: BoxConstraints (
                                      maxWidth: 148*fem,
                                    ),
                                    child: Text(
                                      'FOLLOW US IN OUR SOCIAL NETWORK',
                                      textAlign: TextAlign.center,
                                      style : TextStyle(
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.2*ffem/fem,
                                        letterSpacing: 0.525*fem,
                                        color: Color(0xffffb0b0),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogrouphh7hPc7 (NgXGy4uce7S3LYVq8gHH7h)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.65*fem, 0*fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // iconinstagramuqM (113:407)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                          width: 18*fem,
                                          height: 18*fem,
                                          child: Image.asset(
                                            'assets/images/icon-instagram.png',
                                            width: 18*fem,
                                            height: 18*fem,
                                          ),
                                        ),
                                        Container(
                                          // userinstagramCpT (129:19)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 0*fem),
                                          child: Text(
                                            '@celestia.official',
                                            textAlign: TextAlign.center,
                                            style : TextStyle(
                                              fontSize: 7*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2*ffem/fem,
                                              letterSpacing: 0.42*fem,
                                              color: Color(0xffffb0b0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // userfacebooktxB (129:22)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.08*fem, 0*fem),
                                          child: Text(
                                            'Celestia Official',
                                            textAlign: TextAlign.center,
                                            style : TextStyle(
                                              fontSize: 7*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2*ffem/fem,
                                              letterSpacing: 0.42*fem,
                                              color: Color(0xffffb0b0),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // iconfacebookoJT (113:416)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.05*fem),
                                          width: 17.83*fem,
                                          height: 17.78*fem,
                                          child: Image.asset(
                                            'assets/images/icon-facebook.png',
                                            width: 17.83*fem,
                                            height: 17.78*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupbwi3igK (NgXHBjDBmrwoXJBRTPBwi3)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.88*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // iconyoutubeSMR (113:414)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.56*fem, 0.25*fem),
                                    width: 18.88*fem,
                                    height: 14.11*fem,
                                    child: Image.asset(
                                      'assets/images/icon-youtube.png',
                                      width: 18.88*fem,
                                      height: 14.11*fem,
                                    ),
                                  ),
                                  Container(
                                    // useryoutubeLhh (129:20)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 0.25*fem),
                                    child: Text(
                                      'Celestia Official',
                                      textAlign: TextAlign.center,
                                      style : TextStyle(
                                        fontSize: 7*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2*ffem/fem,
                                        letterSpacing: 0.42*fem,
                                        color: Color(0xffffb0b0),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // usertwitterT1d (129:21)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 2.25*fem),
                                    child: Text(
                                      '@celestia.official',
                                      textAlign: TextAlign.center,
                                      style : TextStyle(
                                              fontSize: 7*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2*ffem/fem,
                                              letterSpacing: 0.42*fem,
                                              color: Color(0xffffb0b0),
                                            ),
                                    ),
                                  ),
                                  Container(
                                    // icontwitterxUB (113:403)
                                    width: 19*fem,
                                    height: 16*fem,
                                    child: Image.asset(
                                      'assets/images/icon-twitter.png',
                                      width: 19*fem,
                                      height: 16*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupubxh6qH (NgXHRdygAVgocF3QdFUbXh)
                              margin: EdgeInsets.fromLTRB(0.44*fem, 0*fem, 1.17*fem, 0*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // iconwebR6s (113:405)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.17*fem, 0*fem),
                                    width: 17.83*fem,
                                    height: 17.83*fem,
                                    child: Image.asset(
                                      'assets/images/icon-web.png',
                                      width: 17.83*fem,
                                      height: 17.83*fem,
                                    ),
                                  ),
                                  Container(
                                    // userwebYBV (129:23)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.5*fem, 1.83*fem),
                                    child: Text(
                                      'www. celestia.com',
                                      textAlign: TextAlign.center,
                                      style : TextStyle(
                                              fontSize: 7*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2*ffem/fem,
                                              letterSpacing: 0.42*fem,
                                              color: Color(0xffffb0b0),
                                            ),
                                    ),
                                  ),
                                  Container(
                                    // usergmail3e3 (129:24)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.5*fem, 1.83*fem),
                                    child: Text(
                                      'celestia@gmail.com',
                                      textAlign: TextAlign.center,
                                      style : TextStyle(
                                              fontSize: 7*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2*ffem/fem,
                                              letterSpacing: 0.42*fem,
                                              color: Color(0xffffb0b0),
                                            ),
                                      
                                    ),
                                  ),
                                  Container(
                                    // icongmailY51 (113:409)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.17*fem),
                                    width: 17.83*fem,
                                    height: 13.67*fem,
                                    child: Image.asset(
                                      'assets/images/icon-gmail.png',
                                      width: 17.83*fem,
                                      height: 13.67*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}