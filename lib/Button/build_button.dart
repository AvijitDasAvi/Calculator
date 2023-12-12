import 'package:calculator/Button/button_color.dart';
import 'package:flutter/material.dart';

//Create for button design and impliment
Widget buildButton(value) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Material(
      //Colors for buttons
      color: buttonColor(value),
      clipBehavior:
          Clip.hardEdge, //Using for button splash in inside the border
      shape: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white24),
        borderRadius: BorderRadius.circular(100),
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(value),
        ),
      ),
    ),
  );
}
