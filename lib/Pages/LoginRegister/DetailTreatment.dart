import 'package:flutter/material.dart';

class DetailTreatmentPage extends StatefulWidget {
  @override
  _DetailTreatmentPage createState() => _DetailTreatmentPage();
}

class _DetailTreatmentPage extends State<DetailTreatmentPage> {
  List<String> sections = ['Main Treatment', 'Side Treatment', 'Styling'];
  List<List<String>> items = [
    ['Shampoo', 'Conditioner'],
    ['Hair mask', 'Hair tonic', 'Hair vitamin', 'Serum'],
    [
      'Straightening',
      'Curling/Waving',
      'Blow drying',
      'Volumizing',
      'Texturizing'
    ],
  ];
  List<List<bool>> _isCompleted = [
    [false, false],
    [false, false, false, false],
    [false, false, false, false, false],
  ];

  Widget _buildTodoList() {
    return ListView.builder(
      itemCount: sections.length,
      itemBuilder: (context, index) {
        return ExpansionTile(title: Text(sections[index]), children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: items[index].length,
            itemBuilder: (context, i) {
              return CheckboxListTile(
                value: _isCompleted[index][i],
                onChanged: (bool? value) {
                  setState(() {
                    _isCompleted[index][i] = value as bool;
                  });
                },
                title: Text(items[index][i]),
              );
            },
          ),
        ]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffb0b0),
        title: Text(
          'Detail Treatment',
          textAlign: TextAlign.center,
        ),
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
      body: _buildTodoList(),
    );
  }
}
