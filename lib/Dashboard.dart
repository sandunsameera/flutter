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
                title: Text("Ask flutter community"),
                trailing: Icon(Icons.question_answer),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              ),
              ListTile(
                title: Text(""),
              ),
            ],
          ),
        ),
      )
    );
  }
}
