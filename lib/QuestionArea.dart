import 'package:flutter/material.dart';

class QuestionArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future<void> _add() async {
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
                child: Text('Confirm'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionArea()),
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
        title: Text(
          "Ask your questions",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: ListTile(
          title: Text("What is statelesswidget in dart"),
          trailing: Icon(Icons.reply),
          onTap: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _add();
        },
        label: Text("Add"),
        icon: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }


}


