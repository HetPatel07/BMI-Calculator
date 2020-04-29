import 'package:flutter/material.dart';
import 'constants.dart';

class IconPart extends StatelessWidget {
  final String text;
  final IconData genderIcon;

  IconPart({this.text, this.genderIcon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: kTextStyleContent,
        )
      ],
    );
  }
}
