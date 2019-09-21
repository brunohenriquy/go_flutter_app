import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_flutter_app/ui/components/CardLine.dart';
import 'package:go_flutter_app/ui/components/CircleImage.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GoFlutter"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleImage(
                url:
                    "https://avatars0.githubusercontent.com/u/8320519?s=460&v=4",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Bruno Henrique",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: Column(
                children: <Widget>[
                  CardLine(
                    "Skills",
                    "None",
                  ),
                  CardLine(
                    "Age",
                    "25",
                  ),
                  CardLine(
                    "Profession",
                    "Flutteiro",
                  ),
                  CardLine(
                    "Hobbies",
                    "Sports",
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
