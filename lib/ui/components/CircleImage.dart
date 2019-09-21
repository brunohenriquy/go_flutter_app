import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  String url;

  CircleImage({this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.0,
      height: 190.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(this.url),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
