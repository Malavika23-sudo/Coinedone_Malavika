import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  BorderSide? side;
  String? text;
  Button({this.side, this.text});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(text.toString()),
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        side: side,
      ),
    );
  }
}