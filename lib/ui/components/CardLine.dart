import 'package:flutter/material.dart';

class CardLine extends StatelessWidget {
  String title;
  String value;

  CardLine(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            value,
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
