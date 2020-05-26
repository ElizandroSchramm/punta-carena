import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool hide;

  InputField({this.icon, this.hint, this.hide});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey)
        ),
        contentPadding: EdgeInsets.only(
          left: 5,
          right: 30,
          bottom: 30,
          top: 30
        )
      ),
      style: TextStyle(color: Colors.white),
      obscureText: hide,
    );
  }
}
