import 'package:calculator/Button/Values/button_values.dart';
import 'package:flutter/material.dart';

//Its use for different color of different button
Color buttonColor(value) {
  return [Button.clr].contains(value)
      ? Colors.red
      : [Button.del].contains(value)
          ? Colors.redAccent
          : [
              Button.per,
              Button.multiply,
              Button.add,
              Button.divide,
              Button.subtract,
              Button.calculate
            ].contains(value)
              ? Colors.orange
              : [Button.dot].contains(value)
                  ? Colors.white24
                  : Colors.black;
}
