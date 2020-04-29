import 'package:flutter/material.dart';
import 'constants.dart';

class BottomBtn extends StatelessWidget {
  final String btnText;
  final Function onTap;
  BottomBtn({this.btnText, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            btnText,
            style: kNavigateBtn,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}
