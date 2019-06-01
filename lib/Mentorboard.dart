import 'package:flutter/material.dart';

class Mentorboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future<void> _prompt() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add your question'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  TextFormField(
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Add'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mentorboard()),
                  );
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Welcome to mentor board",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("Alfred dowson"),
              trailing: Text(
                "Apply for mentor",
                style: TextStyle(color: Colors.green),
              ),
            ),
            ListTile(
              onTap: (){_prompt();},
              title: Text("Richard "),
              trailing: Text(
                "Apply for mentor",
                style: TextStyle(color: Colors.green),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
