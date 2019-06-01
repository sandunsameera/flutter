import 'package:ff/Jobfinder.dart';
import 'package:ff/QuestionArea.dart';
import 'package:ff/Timeline.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionArea()),
                  );
                },
              ),
              ListTile(
                title: Text("Timeline"),
                trailing: Icon(Icons.timeline),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Timelin()),
                  );
                },
              ),
              ListTile(
                title: Text("Job finder"),
                trailing: Icon(Icons.account_circle),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jobfinder()),
                  );
                },
              ),
              ListTile(
                title: Text("Find your mentor"),
                trailing: Icon(Icons.people),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              ),
              ListTile(
                title: Text("Serach code you want"),
                trailing: Icon(Icons.message),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              ),

            ],
          ),
        ),
      )
    );
  }
}
