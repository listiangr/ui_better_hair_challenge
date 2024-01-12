import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel, EventList, Event;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:flutter/material.dart';
import 'package:tubes_provis/Database/Comm/comHelper.dart';
import 'package:tubes_provis/Database/Comm/genLoginSignupHeader.dart';
import 'package:tubes_provis/Database/Comm/genTextFormField.dart';
import 'package:tubes_provis/Database/DatabaseHandler/DbHelper.dart';
import 'package:tubes_provis/Database/Model/UserModel.dart';
import 'package:tubes_provis/Pages/LoginRegister/DetailTreatment.dart';
import 'package:tubes_provis/Pages/LoginRegister/SignupForm.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tubes_provis/Pages/Notification/Notif.dart';
import 'package:tubes_provis/utils.dart';
import 'package:flutter/gestures.dart';

import 'HomeForm.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _currentDate = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  late Event? _selectedEvent;
  List<Event> events = [
    Event(
        title: 'Moisturize',
        description: "Let's get your hair moisturized",
        date: DateTime(2023, 1, 2)),
    Event(
        title: 'Nurture',
        description: 'Lets get your hair nurtured',
        date: DateTime(2023, 1, 3)),
    Event(
        title: 'Repair',
        description: 'Lets get your hair repaired',
        date: DateTime(2023, 1, 4)),
  ];
  EventList<Event> markedDatesMap = EventList<Event>(
    events: {
      DateTime.now(): [
        Event(
          date: DateTime.now(),
          icon: Icon(
            Icons.check,
            color: Colors.red,
          ),
        ),
      ],
    },
  );
  bool _isDescriptionVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffb0b0),
          // title: Text('Hi, Jessica Pauline'),
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
        body: Container(
          child: Column(
            children: <Widget>[
              CalendarCarousel(
                onDayPressed: (DateTime date, List<Event> events) {
                  setState(() {
                    _currentDate = date;
                    _currentMonth = DateFormat.yMMM().format(date);
                    _selectedEvent = events.firstWhere(
                      (event) => event.date == date,
                      orElse: () => Event(
                          title: '', description: '', date: DateTime.now()),
                    );
                    _isDescriptionVisible = true;
                  });
                },
                onDayLongPressed: (DateTime date) {
                  setState(() {
                    _isDescriptionVisible = false;
                  });
                },
                todayBorderColor: Colors.black,
                todayButtonColor: Color(0xffffb0b0),
                todayTextStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                selectedDayButtonColor: Color(0xff80bdab),
                selectedDateTime: _currentDate,
                selectedDayTextStyle: TextStyle(color: Colors.white),
                thisMonthDayBorderColor: Colors.grey,
                height: 420.0,
                daysHaveCircularBorder: false,
                markedDatesMap: markedDatesMap,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    if (events[index].date == _currentDate) {
                      return Card(
                        child: ListTile(
                          title: Text(events[index].title as String),
                          subtitle: Text(events[index].description as String),
                          trailing: FloatingActionButton(
                            backgroundColor: Color(0xff80bdab),
                            child: Icon(Icons.arrow_right),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailTreatmentPage(),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        );
  }
}
