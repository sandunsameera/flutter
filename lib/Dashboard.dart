import 'package:ff/CodeSearch.dart';
import 'package:ff/Jobfinder.dart';
import 'package:ff/Mentorboard.dart';
import 'package:ff/QuestionArea.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text("Fred jhonson"),
      accountEmail: Text("Freddie.jhonson@gmail.com"),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(
          size: 42.0,
        ),
        backgroundColor: Colors.white,
      ),
    );

    final drawerItems = ListView(
      children: <Widget>[
        ListTile(
          title: Text("User profile"),
          trailing: Icon(
            Icons.people,
            color: Colors.yellow,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text("Go for flutter docs"),
          trailing: Icon(
            Icons.dock,
            color: Colors.green,
          ),
          onTap: () {},
        )
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Dashboard",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Quastion area"),
                  trailing: Icon(Icons.question_answer),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuestionArea()),
                    );
                  },
                ),
                ListTile(
                  title: Text("Job finder"),
                  trailing: Icon(Icons.account_circle),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Jobfinder()),
                    );
                  },
                ),
                ListTile(
                  title: Text("Find your mentor"),
                  trailing: Icon(Icons.people),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mentorboard()),
                    );
                  },
                ),
                ListTile(
                  title: Text("Serach code you want"),
                  trailing: Icon(Icons.message),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CodeSearch()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
