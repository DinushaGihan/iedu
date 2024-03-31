import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final suffixIcon;
  final fillColor;
  final textColor;

   MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.suffixIcon,
    required this.fillColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    fillColor: fillColor,
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(color:textColor,),
                    suffixIcon:suffixIcon,
                  ),
                
                ),);
  }
}