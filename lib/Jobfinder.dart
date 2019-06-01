import 'package:flutter/material.dart';

class Jobfinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Job finder",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("Assistant software Engineer"),
              trailing: Text(
                "Apply",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {}, icon: Icon(Icons.add), label: Text("Add CV")),
    );
  }
}
