import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool isPassword;
  final String hintTexett;
  final TextInputType textType;

const MyTextField({super.key, 
  required this.textType,
   required this.isPassword,
    required this.hintTexett,
});
@override
  Widget build(BuildContext context) {
    return TextField(
                keyboardType: textType,
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: hintTexett,
                  enabledBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  fillColor: Colors.amber,
                  filled: true,
                  contentPadding: EdgeInsets.all(8),
                ),
              );
  }
}