import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final button_title;
  final double boxPositionHeight;

   MyButton( {
    super.key,
    required this.button_title,
    required this.boxPositionHeight,
    });

  @override
  Widget build(BuildContext context) {

    
    return Positioned(
      top:boxPositionHeight * .75,
      child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: (Colors.white),
                    backgroundColor: (Color.fromARGB(255, 9, 85, 148)),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // Set the radius to 0 for a rectangular shape
                ),
                  elevation: 1.0,
                  textStyle: const TextStyle(color: Colors.white),
                  minimumSize: Size(300, 40),
                ),
                  child:  Text(button_title),
                ),
    );
  }
}